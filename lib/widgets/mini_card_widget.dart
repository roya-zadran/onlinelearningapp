import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/pages/course_page.dart';

class miniCardWidget extends StatelessWidget {
  final String assetImage;
  final String myTitle;
  final String myRate;
  final String myTime;
  final VoidCallback onPressed;

  const miniCardWidget({
    super.key,
    required this.assetImage,
    required this.myTitle,
    required this.myRate,
    required this.myTime,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        padding: EdgeInsets.zero,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.grey,
        overlayColor: Colors.grey.withOpacity(0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              SvgPicture.asset(assetImage, width: 62, height: 62),
              SizedBox(width: 23,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 11,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myTitle,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xFF272323),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFD600), size: 15),
                          SizedBox(width: 4),
                          Text(
                            myRate,
                            style: RowButtons.kUnabledTextColor,
                          ),
                          SizedBox(width: 24),
                          Icon(
                            Icons.access_time_filled_rounded,
                            color: Color(0xFF272323),
                          ),
                          SizedBox(width: 6),
                          Text(
                            myTime,
                            style: RowButtons.kUnabledTextColor,
                          ),
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
  }
}
