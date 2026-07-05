import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFFFFFFF),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Color(0x4D272323),
            size: 24,
          ),
          hintText: "Search..",
          hintStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            letterSpacing: 0,
            color: Color(0x4D272323),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}