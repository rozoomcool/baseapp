import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

@RoutePage()
class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key, required this.username});

  final String username;

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  late StompClient client;
  List<String> texts = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    Map<String, String> head = {
      "Authorization":
      "Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiVVNFUiIsImlkIjoxLCJlbWFpbCI6ImVtMWFpbDFAbWFpbC5jb20iLCJhdXRob3JpdGllcyI6W3siYXV0aG9yaXR5IjoiVVNFUiJ9XSwic3ViIjoidXNlMXIxMSIsImlhdCI6MTcxNDU5NzI0MiwiZXhwIjoxNzE0NTk4NjgyfQ.pvG9ZvOkiNdfImAwQcGBqlIJj4wlLQAbouQnbd3IXxE"
    };
    client = StompClient(
        config: StompConfig(
            stompConnectHeaders: head,
            url: 'ws://192.168.1.134/ws',
            onConnect: (frame) {
              print(frame.toString());
              print("CONNECTED");
            },
            onStompError: (frame) {
              print("ERROR CONNECTED");
            }));
    client.activate();
    Future.delayed(Duration(seconds: 2), () {
      client.subscribe(
          headers: head,
          destination: "/topic/greetings",
          callback: (frame) {
            setState(() => texts.add(frame.body ?? ""));
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(),
            ),
            const SizedBox(width: 8),
            Text("Username: ${widget.username}"),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...texts.map((element) => Text(element)),
                  const Text("Hello"),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 6,
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Iconsax.sticker),
                                suffixIcon: const Icon(Iconsax.paperclip),
                                labelText: "Message",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton.filledTonal(
                        onPressed: () {
                          client.send(
                              destination: "/app/hello",
                              body: "programming");
                        },
                        icon: const Icon(Iconsax.airplane)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}