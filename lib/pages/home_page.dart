import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinelearningapp/data/constants.dart';
import 'package:onlinelearningapp/widgets/mini_row_buttons_widgets.dart';
import 'package:onlinelearningapp/widgets/textfield_widget.dart';

import '../data/notifier.dart';

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
              padding: const EdgeInsets.fromLTRB(24, 45, 24, 0),
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
                  Text("Hello, Jeje", style: studentNameStyle),
                  SizedBox(height: 8),
                  Text("What do you want to learn?", style: questionIntroStyle),
                  SizedBox(height: 32),
                  TextFieldWidget(),
                  SizedBox(height: 36),
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: const Color(0xFF2A2575),
                      child: Stack(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("New Course!", style: kLabelInCardStyle),
                                  const SizedBox(height: 8),
                                  Text(
                                    "User Experience Class",
                                    style: middleTextStyle,
                                  ),
                                  const SizedBox(height: 3),
                                  TextButton(
                                    onPressed: () {},
                                    style: miniCardButtonStyle.TextButtonStyle,
                                    child: Text(
                                      "See Class",
                                      style: middleTextStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                SvgPicture.asset(
                                  height: 120,
                                  "assets/images/miniCircle.svg",
                                ),
                                Positioned(
                                  top: 30,
                                  right: 1,
                                  width: 152,
                                  height: 84,
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
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Course", style: kCourseLabelStyle),
                      Text("View All", style: RowButtons.kUnabledTextColor),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MiniRowButtonWidget(myText: "All", myValue: 0),
                        MiniRowButtonWidget(myText: "Design", myValue: 1),
                        MiniRowButtonWidget(myText: "Programming", myValue: 2),
                        MiniRowButtonWidget(myText: "UI/UX", myValue: 3),
                      ],
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
