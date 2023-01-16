import 'package:flutter/material.dart';

class CallRinging extends StatefulWidget {
  const CallRinging({Key? key}) : super(key: key);

  @override
  State<CallRinging> createState() => _CallRingingState();
}

class _CallRingingState extends State<CallRinging> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Stack(
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
              child: Column(
                children: [
                  SizedBox(height: height / 4),
                  Image.asset(
                    "assets/icons/bk_callRing.png",
                    height: height / 6.2,
                  ),
                  SizedBox(height: height * 0.05),
                  Text("Courtney Henry", style: TextStyle(color: Colors.white, fontSize: text * 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.005),
                  Text("Ringing . . .", style: TextStyle(color: Colors.white, fontSize: text * 14, fontStyle: FontStyle.italic)),
                  SizedBox(height: height / 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset("assets/icons/speaker.png", scale: text * 1), SizedBox(width: width / 10), Image.asset("assets/icons/close.png", scale: text * 1)],
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
