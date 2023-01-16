import 'package:flutter/material.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({Key? key}) : super(key: key);

  @override
  State<FirstTask> createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        iconTheme: const IconThemeData(color: Colors.black, size: 45),
        title: const Text(
          "First App",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),
      body: Container(
        // color: Colors.black38,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: const Icon(Icons.construction, size: 50),
                  decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(10), gradient: const RadialGradient(colors: [Colors.pink, Colors.black])),
                ),
                Container(
                  height: 70,
                  width: 70,
                  child: const Icon(Icons.accessibility_new_rounded, color: Colors.red, size: 50),
                  decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20)), gradient: RadialGradient(colors: [Colors.orange, Colors.green, Colors.black, Colors.lightBlueAccent])),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 40,
                    color: Colors.green,
                  ),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20), gradient: const LinearGradient(colors: [Colors.pink, Colors.white, Colors.black])),
                ),
                Container(
                  margin: const EdgeInsetsDirectional.all(15),
                  height: 70,
                  width: 70,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle, gradient: LinearGradient(colors: [Colors.black, Colors.white])),
                        height: 50,
                        width: 50,
                        child: const Icon(Icons.add_chart, color: Colors.redAccent, size: 40),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.red, Colors.black])),
                  child: const Icon(
                    Icons.add_business_outlined,
                    size: 40,
                    color: Colors.indigo,
                    shadows: [
                      BoxShadow(
                        spreadRadius: 20,
                        blurRadius: 20,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle, gradient: RadialGradient(colors: [Colors.black, Colors.white])),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.account_tree_outlined,
                          size: 40,
                          color: Colors.purple,
                          shadows: [
                            BoxShadow(
                              color: Colors.deepOrangeAccent,
                              blurRadius: 20,
                              spreadRadius: 20,
                              offset: Offset(20, 20),
                            ),
                            BoxShadow(
                              color: Colors.cyanAccent,
                              blurRadius: 20,
                              spreadRadius: 20,
                              offset: Offset(-20, -20),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                              spreadRadius: 20,
                              offset: Offset(-20, 20),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                              spreadRadius: 20,
                              offset: Offset(20, -20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(color: Colors.black, gradient: SweepGradient(colors: [Colors.black, Colors.pink])),
                  child: Icon(
                    Icons.add_a_photo_sharp,
                    color: Colors.white,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 30,
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(color: Colors.red, gradient: SweepGradient(colors: [Colors.white, Colors.red])),
                  child: Icon(
                    Icons.adb_outlined,
                    size: 40,
                    shadows: [
                      BoxShadow(
                        blurRadius: 30,
                        spreadRadius: 30,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
