import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    // MediaQuery.of(context).padding.top
    // AppBar().preferredSize.height

    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height / 8,
              width: width / 4,
              color: Colors.red,
              child: Text(
                "12345678",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: text * 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
