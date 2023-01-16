import 'package:flutter/material.dart';
import 'package:food/sign_up_one.dart';

class ThreeBoarding extends StatefulWidget {
  const ThreeBoarding({Key? key}) : super(key: key);

  @override
  State<ThreeBoarding> createState() => _ThreeBoardingState();
}

class _ThreeBoardingState extends State<ThreeBoarding> {
  List background = [];
  List text = ["Food Ninja is Where Your \nComfort Food Lives", "Enjoy a fast and smooth food delivery at \nyour doorstep", "Next"];
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
              "assets/icons/background_three.png",
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
                  style: TextStyle(color: Colors.white, fontSize: width / 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height / 16),
                Text(
                  "${text[1]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFA3A3A3),
                    fontSize: width / 30,
                  ),
                ),
                SizedBox(height: height / 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpOne(),
                        ),
                        (route) => false);
                  },
                  child: Container(
                    height: height / 12,
                    width: width / 2.2,
                    decoration: BoxDecoration(color: const Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
                    child: Center(child: Text("${text[2]}", style: TextStyle(color: Colors.white, fontSize: width / 20))),
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
