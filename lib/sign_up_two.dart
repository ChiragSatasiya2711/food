import 'package:flutter/material.dart';
import 'package:food/signup_process.dart';

class SignUpTwo extends StatefulWidget {
  const SignUpTwo({Key? key}) : super(key: key);

  @override
  State<SignUpTwo> createState() => _SignUpTwoState();
}

class _SignUpTwoState extends State<SignUpTwo> {
  List name = [
    "Sign Up For Free ",
    "Anamwp . . |",
    "Email",
    "Password",
    "Keep Me Signed In",
    "Email Me About Special Pricing",
    "Create Account",
    "already have an account?",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double textl = MediaQuery.of(context).textScaleFactor;

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
            ListView(
              padding: EdgeInsets.symmetric(vertical: height / 16, horizontal: width / 14),
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/Logo.png",
                      height: height / 6.2,
                    ),
                    SizedBox(height: height / 55),
                    Text(
                      "FoodNinja",
                      style: TextStyle(fontSize: textl * 28, height: 1, color: const Color(0xFF53E88B), fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Deliever Favorite Food",
                      style: TextStyle(
                        fontSize: textl * 11,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 14),
                    Text(
                      "${name[0]}",
                      style: TextStyle(
                        fontSize: textl * 15,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 20),
                    Container(
                      height: height / 14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 20),
                            child: const Icon(Icons.person, color: Color(0x3C53E88B)),
                          ),
                          Text("${name[1]}", style: TextStyle(color: Colors.white30, fontSize: textl * 12)),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 50),
                    Container(
                      height: height / 14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 20),
                            child: Icon(Icons.mail_outline_outlined, size: textl * 22, color: const Color(0x3C53E88B)),
                          ),
                          Text("${name[2]}", style: TextStyle(color: Colors.white30, fontSize: textl * 12)),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 50),
                    Container(
                      height: height / 14,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width / 20),
                            child: const Icon(Icons.lock, color: Color(0x3C53E88B)),
                          ),
                          Text("${name[3]}", style: TextStyle(color: Colors.white30, fontSize: textl * 12)),
                          SizedBox(width: width / 2.5),
                          Image.asset("assets/icons/Show.png")
                        ],
                      ),
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Color(0xFF53E88B),
                        ),
                        SizedBox(width: width / 30),
                        Text("${name[4]}", style: TextStyle(color: Colors.white30, fontSize: textl * 10)),
                      ],
                    ),
                    SizedBox(height: height / 70),
                    Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Color(0xFF53E88B),
                        ),
                        SizedBox(width: width / 30),
                        Text("${name[5]}", style: TextStyle(color: Colors.white30, fontSize: textl * 10)),
                      ],
                    ),
                    SizedBox(height: height / 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpProcess(),
                            ));
                      },
                      child: Container(
                        height: height / 15,
                        width: width / 2.3,
                        decoration: BoxDecoration(
                          color: const Color(0xFF53E88B),
                          borderRadius: BorderRadius.circular(height / 55),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${name[6]}",
                            style: TextStyle(color: Colors.white, fontSize: textl * 13),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height / 40),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "${name[7]}",
                        style: TextStyle(color: const Color(0xFF53E88B), fontSize: textl * 10, fontWeight: FontWeight.w600, decoration: TextDecoration.underline,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
