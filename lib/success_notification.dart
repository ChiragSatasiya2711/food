import 'package:flutter/material.dart';
import 'package:food/sign_up_one.dart';

class SuccessNotification extends StatefulWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  State<SuccessNotification> createState() => _SuccessNotificationState();
}

class _SuccessNotificationState extends State<SuccessNotification> {
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
                          style: TextStyle(fontSize: text * 23, height: 1, color: const Color(0xFF53E88B), fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "Password reset succesful",
                        style: TextStyle(
                          fontSize: text * 13,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpOne(),
                    ));
              },
              child: Container(
                height: height / 12.8,
                width: width / 2.5,
                decoration: BoxDecoration(color: Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
                child: Center(child: Text("Back", style: TextStyle(color: Colors.white, fontSize: text * 17))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
