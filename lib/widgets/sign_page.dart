import 'package:flutter/material.dart';
import 'package:onlinelearningapp/data/constants.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align( alignment: Alignment.topRight,
                  child: Image.asset("assets/images/circle.png")),
              Padding(
                padding: const EdgeInsets.fromLTRB(59, 59, 57.78, 400),
                child: Align(
                  alignment: Alignment.center,
                    child: Image.asset("assets/images/bg.png")),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
