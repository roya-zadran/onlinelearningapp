import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 41, 24, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/images/menuIcon.svg"),
                SvgPicture.asset("assets/images/profileIcon.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
