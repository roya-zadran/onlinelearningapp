import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/widgets/mini_card_widget.dart';
import 'package:onlinelearningapp/widgets/mini_row_buttons_widgets.dart';
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
              padding:EdgeInsets.fromLTRB(24.w, 45.h, 24.w, 0.h),
              child: SingleChildScrollView(
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
                    SizedBox(height: 24.h),
                    Text("Hello, Jeje", style: studentNameStyle),
                    SizedBox(height: 8.h),
                    Text(
                      "What do you want to learn?",
                      style: questionIntroStyle,
                    ),
                    SizedBox(height: 32.h),
                    TextFieldWidget(),
                    SizedBox(height: 36.h),
                    Container(
                      width: double.infinity,
                      height: 155.h,
                      child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        color: const Color(0xFF2A2575),
                        child: Stack(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24.w,
                                  vertical: 20.h,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New Course!",
                                      style: kLabelInCardStyle,
                                    ),
                                   SizedBox(height: 8.h),
                                    Text(
                                      "User Experience Class",
                                      style: middleTextStyle,
                                    ),
                                     SizedBox(height: 3.h),
                                    TextButton(
                                      onPressed: () {},
                                      style:
                                          miniCardButtonStyle.TextButtonStyle,
                                      child: Expanded(
                                        child: Text(
                                          "See Class",
                                          style: middleTextStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0.h,
                              right: 0.w,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    height: 120.h,
                                    "assets/images/miniCircle.svg",
                                  ),
                                  Positioned(
                                    top: 30.h,
                                    right: 1.w,
                                    width: 152.w,
                                    height: 84.h,
                                    child: SvgPicture.asset(
                                      "assets/images/miniProfile.svg",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Course", style: kCourseLabelStyle),
                        Text("View All", style: RowButtons.kUnabledTextColor),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 40.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MiniRowButtonWidget(myText: "All", myValue: 0),
                          MiniRowButtonWidget(myText: "Design", myValue: 1),

                          MiniRowButtonWidget(
                            myText: "Programming",
                            myValue: 2,
                          ),

                          MiniRowButtonWidget(myText: "UI/UX", myValue: 3),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.h),
                    miniCardWidget(
                      assetImage: 'assets/images/miniCamera.svg',
                      myTitle: "Photoshop Course",
                      myRate: "5.0",
                      myTime: "5h 15m",
                    ),
                    SizedBox(height: 32.h),
                    miniCardWidget(
                      assetImage: 'assets/images/pk.svg',
                      myTitle: "3D Design",
                      myRate: "4.6",
                      myTime: "10h 30m",
                    ),
                    SizedBox(height: 32.h),
                    miniCardWidget(
                      assetImage: 'assets/images/pk.svg',
                      myTitle: "User Experience",
                      myRate: "5.0",
                      myTime: "13h 30m",
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
