import 'package:flutter/material.dart';
import 'package:food/passowerd.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/icons/via_bk.png"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height / 26, horizontal: width / 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: height / 20,
                          width: width / 9,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade800,
                            borderRadius: BorderRadius.all(
                              Radius.circular(height / 60),
                            ),
                          ),
                          child: Icon(Icons.keyboard_arrow_left_sharp, color: Colors.orange, size: text * 25),
                        ),
                      ),
                      SizedBox(height: height / 40),
                      Text(
                        "Enter 4-digit\nVerification code",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 18),
                      ),
                      SizedBox(height: height / 40),
                      Text("Code send to +6282045**** . This code will\n expired in 01:30", style: TextStyle(color: Colors.white, fontSize: text * 9)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Column(
                children: [
                  Container(
                    height: height / 7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x24F4F4F4),
                      borderRadius: BorderRadius.circular(height / 40),
                    ),
                    child: Center(
                        child: Text(
                      "1923",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: text * 30, letterSpacing: width * 0.15),
                    )),
                  ),
                  SizedBox(height: height / 2.9),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Password(),
                          ));
                    },
                    child: Container(
                      height: height / 12.5,
                      width: width / 2.1,
                      decoration: BoxDecoration(color: const Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
                      child: Center(child: Text("Next", style: TextStyle(color: Colors.white, fontSize: text * 17))),
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
