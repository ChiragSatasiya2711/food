import 'package:flutter/material.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
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
                        "Set Your Location ",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: text * 20),
                      ),
                      SizedBox(height: height / 40),
                      Text("This data will be displayed in your account\n profile for security", style: TextStyle(color: Colors.white, fontSize: text * 10)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Container(
                height: height / 6,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x24F4F4F4),
                  borderRadius: BorderRadius.circular(height / 40),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                          child: Image.asset("assets/images/location.png"),
                        ),
                        const Text(
                          "Your Location",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      height: height / 14,
                      width: width / 1.2,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Set\nLocation",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height / 2.7),
            Container(
              height: height / 12.5,
              width: width / 2.1,
              decoration: BoxDecoration(color: const Color(0xD753E88B), borderRadius: BorderRadius.all(Radius.circular(width / 20))),
              child: Center(child: Text("Next", style: TextStyle(color: Colors.white, fontSize: text * 17))),
            ),
          ],
        ),
      ),
    );
  }
}
