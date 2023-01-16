import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
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
                  Text("Courtney Henry", style: TextStyle(color: Colors.white, fontSize: text * 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: height * 0.005),
                  Text("15.23 Min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: text * 16, fontStyle: FontStyle.italic)),
                  SizedBox(height: height / 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset("assets/icons/mute_icon.png", scale: text * 1), SizedBox(width: width / 10), Image.asset("assets/icons/close.png", scale: text * 1)],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        elevation: 0,
        child: Container(
          height: height / 12,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade600,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.home_filled, color: Color(0xFF53E88B)),
              const Icon(Icons.account_circle_rounded, color: Color(0xFF8FE8B1)),
              Container(
                height: height / 22,
                width: width / 4.5,
                decoration: const BoxDecoration(
                  color: Color(0xFF8FE8B1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/iconchat.png"),
                    const Text("Chat", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
