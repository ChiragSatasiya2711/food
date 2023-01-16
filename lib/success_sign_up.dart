import 'package:flutter/material.dart';

class SuccessSignUP extends StatefulWidget {
  const SuccessSignUP({Key? key}) : super(key: key);

  @override
  State<SuccessSignUP> createState() => _SuccessSignUPState();
}

class _SuccessSignUPState extends State<SuccessSignUP> {
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
                  height: height / 2.4,
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
                Center(
                  heightFactor: 3,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/success.png",
                        height: height / 6.2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.02),
                        child: Text(
                          "Congrats!",
                          style: TextStyle(fontSize: text * 23, height: 1, color: const Color(0xFF53E88B), fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Your Profile Is Ready To Use",
                        style: TextStyle(
                          fontSize: text * 13,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: height / 13,
              width: width / 2.4,
              decoration: BoxDecoration(color: Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
              child: Center(child: Text("Try Order", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: text * 17))),
            ),
          ],
        ),
      ),
    );
  }
}
