import 'package:flutter/material.dart';
import 'package:food/upload_photo.dart';

class SignUpProcess extends StatefulWidget {
  const SignUpProcess({Key? key}) : super(key: key);

  @override
  State<SignUpProcess> createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
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
                    Image.asset(
                      "assets/icons/via_bk.png",
                    ),
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
                        "Fill in your bio to get \nstarted",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 20),
                      ),
                      SizedBox(height: height / 40),
                      Text("This data will be displayed in your account \nprofile for security", style: TextStyle(color: Colors.white, fontSize: text * 10)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 25),
              child: Column(
                children: [
                  Container(
                    height: height / 14,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0x24F4F4F4),
                      borderRadius: BorderRadius.circular(height / 40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.025),
                      child: const Text(
                        "First Name",
                        style: TextStyle(color: Colors.white38),
                      ),
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
                    child: Padding(
                      padding: EdgeInsets.all(height * 0.025),
                      child: const Text(
                        "Last Name",
                        style: TextStyle(color: Colors.white38),
                      ),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.05, top: height * 0.03),
                      child: const Text(
                        "Mobile Number",
                        style: TextStyle(color: Colors.white38),
                      ),
                    ),
                  ),
                  SizedBox(height: height / 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadPhoto()));
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
