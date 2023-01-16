import 'dart:math';

import 'package:flutter/material.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({super.key, required});

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  dynamic colorlist = 0xffffffff;
  void generateColor() {
    colorlist = Random().nextInt(0xffffffff);
    setState(() {
      colorlist++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorlist),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: generateColor,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
