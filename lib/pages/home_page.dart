import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/widgets/textfield_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FractionallySizedBox(
          widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0,
          child: Scaffold(
            backgroundColor: Color(0xFFF0F4FD),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(24, 41, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/images/menuIcon.svg"),
                      SvgPicture.asset("assets/images/profileIcon.svg"),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Hello, Jeje",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      letterSpacing: 0,
                      color: Color(0xFF272323),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "What do you want to learn?",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 0,
                      color: Color(0x80272323),
                    ),
                  ),
                  SizedBox(height: 32),
                  TextFieldWidget(),
                  SizedBox(height: 36,),
                  Card(
                    color: Color(0xFF2A2575),
                    child: Column(children: [
                      SvgPicture.asset("assets/images/miniCircle.svg")
                    ],),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
