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
                  SizedBox(height: 36),
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Color(0xFF2A2575),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Course!", style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  color: Color(0xFFFFFFFF),
                                ),),
                                SizedBox(height: 8,),
                                Text("User Experience Class", style: GoogleFonts.montserrat(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0,
                                ),),
                                SizedBox(height: 16),
                                TextButton(onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xBFC983DE),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                                    ),
                                    child: Text("See Class", style: GoogleFonts.montserrat(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0,
                                ),)),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              SvgPicture.asset("assets/images/miniCircle.svg"),
                              SvgPicture.asset("assets/images/miniProfile.svg"),
                            ],
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
      },
    );
  }
}
