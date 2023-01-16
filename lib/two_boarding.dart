import 'package:flutter/material.dart';
import 'package:food/three_boarding.dart';

class TwoBoarding extends StatefulWidget {
  const TwoBoarding({Key? key}) : super(key: key);

  @override
  State<TwoBoarding> createState() => _TwoBoardingState();
}

class _TwoBoardingState extends State<TwoBoarding> {
  List background = [];
  List text = ["Find your  Comfort \n Food here", "Here You Can find a chef or dish for every \ntaste and color. Enjoy!", "Next"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double textl = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            SizedBox(height: height / 15),
            Image.asset(
              "assets/icons/background_two.png",
              height: height / 2.5,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: height / 20),
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "${text[0]}",
                  style: TextStyle(color: Colors.white, fontSize: textl * 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height / 16),
                Text(
                  "${text[1]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA3A3A3),
                    fontSize: textl * 12,
                  ),
                ),
                SizedBox(height: height / 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThreeBoarding(),
                      ),
                    );
                  },
                  child: Container(
                    height: height / 12,
                    width: width / 2.2,
                    decoration: BoxDecoration(color: const Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
                    child: Center(child: Text("${text[2]}", style: TextStyle(color: Colors.white, fontSize: textl * 17))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
