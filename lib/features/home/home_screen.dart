import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/model/course/course.dart';
import 'package:baseapp/domain/repository/course_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Course> courses = [];
  final CoourseRepository coourseRepository = CoourseRepository();

  void fetchCourses() async {
    var data = await coourseRepository.getAll();
    setState(() {
      courses = data ?? [];
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCourses();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    icon: const Icon(Iconsax.refresh),
                    onPressed: () => fetchCourses(),
                  )),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: courses
                      .map<Widget>((course) => Container(
                            width: 300,
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFEFEFE),
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0x11000000),
                                    spreadRadius: 0.2,
                                    blurRadius: 7)
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(flex: 3, child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(color: Colors.purple,),
                                )),
                                Expanded(flex: 1, child: Text(course.title),)
                              ],
                            ),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
