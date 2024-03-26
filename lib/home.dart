
import 'package:flutter/material.dart';

import 'Authentication/auth.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Google Play Store ⚪",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            color: MyColors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Image.asset(
                        'assets/images/logo.gif',
                      width: size.width * 0.2,
                      height: size.width * 0.2,
                    ),
                      SizedBox(
                          width: size.width * 0.05
                      ),
                      Text(
                        "Google Play",
                        style: TextStyle(
                          color: MyColors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito',
                        ),
                      )
                    ]
                ),
                SizedBox(
                  height: 50
                ),
                Text(
                  "Get Started",
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.red,
                      disabledBackgroundColor: MyColors.veryLightBlue,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: MyColors.white,
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
                      backgroundColor: MyColors.red,
                      disabledBackgroundColor: MyColors.veryLightBlue,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: MyColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                )
              ],
            )
        )
    );
  }
}
