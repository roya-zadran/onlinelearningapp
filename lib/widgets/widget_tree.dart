import 'package:flutter/material.dart';
import 'package:onlinelearningapp/constants.dart';

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 52, 24, 52),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Image.asset("assets/images/circle.png"), Text("Studee")],
        ),
      ),
    );
  }
}
