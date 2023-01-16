import 'package:flutter/material.dart';
import 'package:food/two_boarding.dart';

class OneBoarding extends StatefulWidget {
  const OneBoarding({Key? key}) : super(key: key);

  @override
  State<OneBoarding> createState() => _OneBoardingState();
}

class _OneBoardingState extends State<OneBoarding> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 2.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/background_one.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: height / 2.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF0D0D0D),
                        Color(0x00000000),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TwoBoarding(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/Logo.png",
                    height: height / 6.2,
                  ),
                  SizedBox(height: height / 60),
                  Text(
                    "FoodNinja",
                    style: TextStyle(fontSize: text * 40, height: 1, color: const Color(0xFF53E88B), fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                      fontSize: text * 16,
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
