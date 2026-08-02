import 'package:flutter/material.dart';
import 'package:onlinelearningapp/pages/welcome_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp( ScreenUtilInit(
    designSize:  const Size(375, 812),
    minTextAdapt:  true,
    splitScreenMode: true,
    builder: (context, child) {
      return const MyApp();
    },
  ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
