import 'package:flutter/material.dart';
import 'package:food/varification_code.dart';

class ViaMethod extends StatefulWidget {
  const ViaMethod({Key? key}) : super(key: key);

  @override
  State<ViaMethod> createState() => _ViaMethodState();
}

class _ViaMethodState extends State<ViaMethod> {
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
                  padding: EdgeInsets.symmetric(vertical: height / 30, horizontal: width / 20),
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
                        "Forgot password?",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 20),
                      ),
                      SizedBox(height: height / 40),
                      Text("Select which contact details should we\n use to reset your password", style: TextStyle(color: Colors.white, fontSize: text * 10)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationCode(),
                          ));
                    },
                    child: Container(
                      height: height / 9.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 40),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 20),
                            child: Image.asset("assets/icons/message.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Via sms:", style: TextStyle(color: Colors.white30, fontSize: text * 12)),
                              SizedBox(height: height * 0.01),
                              Row(
                                children: [
                                  Image.asset("assets/icons/frame.png"),
                                  SizedBox(width: width / 30),
                                  Image.asset("assets/icons/frame.png"),
                                  SizedBox(width: width / 30),
                                  Text("4235", style: TextStyle(color: Colors.white, fontSize: text * 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VerificationCode(),
                          ));
                    },
                    child: Container(
                      height: height / 11,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 40),
                      ),
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 20),
                              child: Icon(
                                Icons.mail,
                                color: const Color(0xFF53E88D),
                                size: text * 32,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Via email:", style: TextStyle(color: Colors.white30, fontSize: text * 12)),
                              SizedBox(height: height * 0.01),
                              Row(
                                children: [
                                  Image.asset("assets/icons/frame.png"),
                                  SizedBox(width: width / 30),
                                  Image.asset("assets/icons/frame.png"),
                                  SizedBox(width: width / 30),
                                  Text("4235", style: TextStyle(color: Colors.white, fontSize: text * 12, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height / 3.2),
                  Container(
                    height: height / 12.5,
                    width: width / 2.1,
                    decoration: BoxDecoration(color: const Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
                    child: Center(child: Text("Next", style: TextStyle(color: Colors.white, fontSize: text * 17))),
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
