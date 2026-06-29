import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/data/constants.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/circle.png"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(59, 59, 57.78, 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/bg.png"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(69, 48, 68, 0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Stud",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                      fontSize: 64,
                      letterSpacing: 0,
                    ),
                  ),
                  TextSpan(
                    text: "ee",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC983DE),
                      fontSize: 64,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
