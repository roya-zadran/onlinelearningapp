
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    super.key,
    required this.myColor,
    required this.myText,
    required this.myTextColor,
    required this.myHeight,
    required this.map,
  });

  final Color myColor;
  final String myText;
  final Color myTextColor;
  final double myHeight;
  final VoidCallback map;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, myHeight, 24, 0),
        child: TextButton(
          onPressed: map,
          style: TextButton.styleFrom(
            backgroundColor: myColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            minimumSize: Size(double.infinity, 60),
          ),
          child: Text(myText, style: TextStyle(color: myTextColor),),
        ),
      ),
    );
  }
}
