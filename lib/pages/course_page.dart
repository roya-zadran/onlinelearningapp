import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A2575),

      body: Stack(
        children: [
          // =====================================================
          // TOP IMAGE SECTION
          // =====================================================
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 346,

            child: Stack(
              children: [
                // Circle
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset("assets/images/circle.png"),
                ),

                // Big Profile
                Positioned(
                  top: 85,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/bigProfile.svg",
                      width: 316,
                    ),
                  ),
                ),

                // Back Button
                Positioned(
                  top: 25,
                  left: 18,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),

          // =====================================================
          // WHITE COURSE CARD
          // =====================================================
          Positioned(
            top: 259,
            left: 0,
            right: 0,
            bottom: 0,

            child: Container(
              padding: const EdgeInsets.fromLTRB(28, 26, 28, 25),

              decoration: const BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),

              // =================================================
              // SCROLLABLE CONTENT
              // =================================================
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    // =================================================
                    // SMALL TOP RECTANGLE
                    // =================================================
                    Center(
                      child: Container(
                        width: 60,
                        height: 5,

                        decoration: BoxDecoration(
                          color: const Color(0xFFE9ECF7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),

                    // =================================================
                    // NEW COURSE
                    // =================================================
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xFFC983DE),
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Text(
                        "New Course",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // =================================================
                    // TITLE + FREE
                    // =================================================
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "User Experience\nClass",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF292929),
                              height: 1.15,
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 8),

                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 6,
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xFF2A2575),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Text(
                            "Free",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // =================================================
                    // INSTRUCTOR INFORMATION
                    // =================================================
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(
                            "assets/images/profileIcon.svg",
                          ),
                        ),

                        const SizedBox(width: 10),

                        Text(
                          "Ardy Gunawan",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),

                        const Spacer(),

                        const Icon(Icons.star, color: Colors.amber, size: 20),

                        const SizedBox(width: 5),

                        Text(
                          "5.0",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(width: 15),

                        const Icon(
                          Icons.access_time_filled,
                          size: 17,
                          color: Colors.black87,
                        ),

                        const SizedBox(width: 5),

                        Text(
                          "5h 15m",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // =================================================
                    // DIVIDER
                    // =================================================
                    const Divider(color: Color(0xFFE8E8E8)),

                    const SizedBox(height: 20),

                    // =================================================
                    // ABOUT COURSE
                    // =================================================
                    Text(
                      "About Course",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF292929),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // =================================================
                    // DESCRIPTION
                    // =================================================
                    Text(
                      "In this course, you will learn the "
                      "comprehensive program training of User "
                      "Experience and mastering user-centered "
                      "design techniques. You will also learn how "
                      "to make digital prototyping properly. At the "
                      "end of this course, you will be ready to "
                      "explore UX Design in your way.",

                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        height: 1.7,
                        color: Colors.grey,
                      ),
                    ),

                    // =================================================
                    // SPACE BEFORE BUTTON
                    // =================================================
                    const SizedBox(height: 30),

                    // =================================================
                    // START COURSE BUTTON
                    // =================================================
                    SizedBox(
                      width: double.infinity,
                      height: 60,

                      child: ElevatedButton(
                        onPressed: () {
                          print("Course started");
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2A2575),
                          elevation: 0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        child: Text(
                          "Start Course!",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // Bottom breathing space
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
