import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color scaffoldBackgroundColor = Color(0xFF2A2575);
  static const Color primaryColor = Color(0xFF6C63FF);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
}

final TextStyle centerTextStyle = GoogleFonts.montserrat(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  letterSpacing: 0,
  height: 1.6,
  color: AppColors.whiteColor,
);
final TextStyle middleTextStyle = GoogleFonts.montserrat(
  color: Color(0xFFFFFFFF),
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
);
final kWelcomeLabelTextStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  fontSize: 28,
  letterSpacing: 0,
);

final kGreetingTextStyle = GoogleFonts.montserrat(
  color: Colors.black.withOpacity(0.6),
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
);
final kForgotTextStyle = GoogleFonts.montserrat(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
  color: Color(0xFF2A2575),
);
final TextStyle studentNameStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  fontSize: 28,
  letterSpacing: 0,
  color: Color(0xFF272323),
);
final TextStyle kLabelInCardStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: Colors.white,
);
final TextStyle questionIntroStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  letterSpacing: 0,
  color: Color(0x80272323),
);
final TextStyle kSignInTextStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  fontSize: 14,
  letterSpacing: 0,
  color: Color(0xFFFFFFFF),
);
final TextStyle kTextSpanStyle1 = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  color: AppColors.whiteColor,
  fontSize: 64,
  letterSpacing: 0,
);
final TextStyle kTextSpanStyle2 = GoogleFonts.montserrat(
  fontWeight: FontWeight.bold,
  color: Color(0xFFC983DE),
  fontSize: 64,
  letterSpacing: 0,
);
final TextStyle kCourseLabelStyle = GoogleFonts.montserrat(
fontWeight: FontWeight.bold,
  fontSize: 20,
  letterSpacing: 0,
);
final kViewAllLabelStyle = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 14,
  color: Colors.black.withOpacity(0.5),

);
class miniCardButtonStyle {
  static final TextButtonStyle = TextButton.styleFrom(
    minimumSize: Size(82, 25),
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
    backgroundColor: Color(0xBFC983DE),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );
}
 class AppButtonStyle {
  static final ButtonStyle myButton = TextButton.styleFrom(
    backgroundColor: Color(0xFF2A2575),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(12),
    ),
    minimumSize: Size(double.infinity, 60),
  );
 }
 class ContainerDecoration {
  static BoxDecoration myContainer = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    ),
  );
 }