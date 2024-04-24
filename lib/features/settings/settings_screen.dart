import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  void initState() {
    super.initState();
    initSock();
  }

  void initSock() async {
    final wsUrl = Uri.parse('ws://10.3.1.138/ws');
    final channel = WebSocketChannel.connect(wsUrl);

    await channel.ready;

    channel.stream.listen((message) {
      channel.sink.add('received!');
      channel.sink.close(status.goingAway);
    });
  }

  @override
  Widget build(BuildContext context) {
    StompClient client = StompClient(
        config: StompConfig(
          stompConnectHeaders: {
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiVVNFUiIsImlkIjoxLCJlbWFpbCI6InJvc3VsMS51bUBnbWFpbC5jb20iLCJhdXRob3JpdGllcyI6W3siYXV0aG9yaXR5IjoiVVNFUiJ9XSwic3ViIjoicm9zdWwxIiwiaWF0IjoxNzEzOTYyMjg0LCJleHAiOjE3MTM5NjM3MjR9.Ft6h-nz0agthhKck-GIV8sgAcZD3ICabIapgQPk6ZS0"
          },
            url: 'ws://10.3.1.138:8080/gs-guide-websocket',
            onConnect: (frame) {
              print(frame.toString());
              print("CONNECTED");
            },
          onStompError: (frame) {
              print("ERROR CONNECTED");

          }
        )
    );
    client.activate();
    Future.delayed(Duration(seconds: 2), () {
      client.subscribe(destination: "/app/location", callback: (frame) {
        print("Sybscribe on location");
      });
    });
    print(client);
    return Text('kjgkfg');
  }
}