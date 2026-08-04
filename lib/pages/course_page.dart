import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A2575),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 18),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Stack(children: [
                SvgPicture.asset("assets/images/circle.png"),
                SvgPicture.asset("assets/images/circle.png"),
              ],)
            ],
          ),
        ],
      ),
    );
  }
}
