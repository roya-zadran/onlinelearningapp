import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/pages/sign_in_page.dart';
import 'package:onlinelearningapp/widgets/sign_button_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FractionallySizedBox(
          widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
          child: Scaffold(
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
                        child: SvgPicture.asset("assets/images/bg.svg"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(69, 48, 50, 0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Stud",
                          style: kTextSpanStyle1,
                        ),
                        TextSpan(
                          text: "ee",
                          style: kTextSpanStyle2,
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(64, 16, 63, 0),
                    child: Column(
                      children: [
                        Text(
                          "Learn easy and fast with Studee",
                          style: centerTextStyle,
                        ),
                        Text(
                          "Watch video learning anytime",
                          style: centerTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                SignButton(
                  myColor: Colors.white,
                  myText: "Sign In",
                  myTextColor: Color(0xFF272323),
                  myHeight: 48,
                  map: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInPage();
                        },
                      ),
                    );
                  },
                ),
                SignButton(
                  myColor: Colors.white.withOpacity(0.4),
                  myText: "Sign Up",
                  myTextColor: Color(0xFFFFFFFF),
                  myHeight: 16,
                  map: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInPage();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
