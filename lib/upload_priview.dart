import 'package:flutter/material.dart';
import 'package:food/success_sign_up.dart';

class UploadPriview extends StatefulWidget {
  const UploadPriview({Key? key}) : super(key: key);

  @override
  State<UploadPriview> createState() => _UploadPriviewState();
}

class _UploadPriviewState extends State<UploadPriview> {
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
                        "Upload Your Photo \nProfile",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 20),
                      ),
                      SizedBox(height: height / 40),
                      Text("This data will be displayed in your account\n profile for security", style: TextStyle(color: Colors.white, fontSize: text * 10)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.06),
            Image.asset(
              "assets/images/bk_upload.png",
            ),
            SizedBox(height: height / 7),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessSignUP(),
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
    );
  }
}
