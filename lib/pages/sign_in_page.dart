import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/data/constants.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
          SizedBox(height: 11),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 50, 24, 86),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: GoogleFonts.montserrat(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(height: 24),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: Size(327, 60),
                        backgroundColor: Color(0xFFF0F4FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Username",
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
