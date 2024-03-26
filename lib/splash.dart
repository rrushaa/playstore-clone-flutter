import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';
import 'home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<String> texts = [
    "Chat GPT",
    "Let's Design",
    "Let's Discover",
    "Let's Collaborate",
    "Let's Explore",
    "Let's Chit-Chat"
  ];

  int currentIndex = 0;
  String displayedText = "";
  Color backgroundColor = Colors.blue; // Initial background color

  @override
  void initState() {
    super.initState();
    startTypingLoop();
  }

  void startTypingLoop() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      startTyping();
    });
  }

  void startTyping() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (texts[currentIndex].length > displayedText.length) {
        setState(() {
          displayedText =
              texts[currentIndex].substring(0, displayedText.length + 1);
        });
      } else {
        timer.cancel();
        Timer(Duration(seconds: 1), () {
          eraseText();
        });
      }
    });
  }

  void eraseText() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (displayedText.isNotEmpty) {
        setState(() {
          displayedText = displayedText.substring(0, displayedText.length - 1);
        });
      } else {
        timer.cancel();
        setState(() {
          currentIndex = (currentIndex + 1) % texts.length;
          backgroundColor = getRandomColor();
        });
        startTyping();
      }
    });
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.7,
            color: MyColors.black,
            child: Center(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Transform.rotate(
                  angle: 90 * (pi / 180),
                  child: Image.asset(
                    'assets/images/play-splash.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: MyColors.black, // Background color for the bottom sheet
            child: Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                color: backgroundColor, // Background color for the buttons
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: MyColors.white, backgroundColor: MyColors.greyShadow, // Text color
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/google.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: MyColors.white, backgroundColor: MyColors.greyShadow,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: MyColors.white, backgroundColor: MyColors.greyShadow,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
