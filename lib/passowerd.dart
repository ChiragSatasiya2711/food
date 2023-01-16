import 'package:flutter/material.dart';
import 'package:food/success_notification.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                        "Reset your password\n here",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 20),
                      ),
                      SizedBox(height: height / 40),
                      Text("Select which contact details should we\nuse to reset your password", style: TextStyle(color: Colors.white, fontSize: text * 10)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 25),
              child: Column(
                children: [
                  Container(
                    height: height / 13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x24F4F4F4),
                      borderRadius: BorderRadius.circular(height / 40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New Password",
                          style: TextStyle(color: Colors.white60),
                        ),
                        SizedBox(width: width / 2.3),
                        const Icon(
                          Icons.remove_red_eye,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    height: height / 13,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x24F4F4F4),
                      borderRadius: BorderRadius.circular(height / 40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Confirm Password",
                          style: TextStyle(color: Colors.white60),
                        ),
                        SizedBox(width: width / 2.6),
                        const Icon(
                          Icons.remove_red_eye,
                          color: Colors.white60,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height / 3.9),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessNotification(),
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
