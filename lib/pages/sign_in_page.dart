import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/pages/home_page.dart';
import 'package:onlinelearningapp/widgets/text_button_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FractionallySizedBox(
        widthFactor: constraints.maxWidth > 500? 0.5 : 1.0,
        child: Scaffold(
          backgroundColor: AppColors.scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
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
                        child: SvgPicture.asset("assets/images/bg.svg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  width: double.infinity,
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
                        TextButtonWidget(title: "Username"),
                        SizedBox(height: 24),
                        TextButtonWidget(title: "Password"),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                                color: Color(0xFF2A2575),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF2A2575),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(12),
                            ),
                            minimumSize: Size(double.infinity, 60),
                          ),
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              letterSpacing: 0,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
