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
   color: AppColors.whiteColor
 );
final TextStyle middleTextStyle = GoogleFonts.montserrat(
      color: Color(0xFFFFFFFF),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
);
 class miniCardButtonStyle {
  static final TextButtonStyle = TextButton.styleFrom(
minimumSize: Size(82, 25),
     padding: const EdgeInsets.symmetric(
       horizontal: 6,
       vertical: 3,
     ),
     backgroundColor: Color(0xBFC983DE),
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(8),
     ),
   );
 }
