import 'package:flutter/material.dart';

class OneTextFiled extends StatefulWidget {
  const OneTextFiled({Key? key}) : super(key: key);

  @override
  State<OneTextFiled> createState() => _OneTextFiledState();
}

class _OneTextFiledState extends State<OneTextFiled> {
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,
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
                      style: TextStyle(
                        fontSize: text * 32,
                        height: 1,
                        color: const Color(0xFF53E88B),
                      ),
                    ),
                    Text(
                      "Deliever Favorite Food",
                      style: TextStyle(
                        fontSize: text * 11,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 14),
                    Text(
                      "Login To Your Account",
                      style: TextStyle(
                        fontSize: text * 18,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 20),
                    TextField(
                      controller: email,
                      cursorColor: Colors.green,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      autocorrect: true,
                      maxLines: 2,
                      minLines: 1,
                      autofocus: true,
                      cursorHeight: 40,
                      cursorRadius: Radius.circular(30),
                      cursorWidth: 5,
                      enabled: true,
                      keyboardType: TextInputType.emailAddress,
                      // maxLength: 40,
                      enableSuggestions: false,
                      keyboardAppearance: Brightness.dark,
                      mouseCursor: MouseCursor.defer,
                      onChanged: (value) {
                        debugPrint("On Tap==========>$value");
                        setState(() {});
                      },
                      onTap: () {
                        debugPrint("On Tap==========>");
                      },
                      // readOnly: true,
                      // scrollPhysics: ScrollPhysics(parent: BouncingScrollPhysics()),
                      //  showCursor: false,
                      //   scrollPadding: EdgeInsets.symmetric(horizontal: 40),
                      // textAlignVertical: TextAlignVertical.bottom,
                      textCapitalization: TextCapitalization.characters,
                      textDirection: TextDirection.rtl,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          labelText: "email",
                          prefixIcon: Icon(Icons.mail),
                          suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: () => email.clear())),
                    ),
                    SizedBox(height: height / 50),
                    Container(
                      height: height / 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: height / 34, horizontal: width / 25),
                        child: Text("Password", style: TextStyle(color: const Color(0xFFA3A3A3), fontSize: text * 14)),
                      ),
                    ),
                    SizedBox(height: height / 30),
                    Text(
                      "Or Continue With",
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: text * 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: height / 12,
                            decoration: BoxDecoration(
                              color: const Color(0x24F4F4F4),
                              borderRadius: BorderRadius.circular(height / 60),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width / 35),
                                  child: Image.asset("assets/icons/facebook.png"),
                                ),
                                Text(
                                  "Facebook",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: text * 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: width / 18),
                        Expanded(
                          child: Container(
                            height: height / 12,
                            decoration: BoxDecoration(
                              color: const Color(0x24F4F4F4),
                              borderRadius: BorderRadius.circular(height / 60),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width / 25),
                                  child: Image.asset("assets/icons/google.png"),
                                ),
                                Text(
                                  "Google",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: text * 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    Text(
                      "Forgot Your Password?",
                      style: TextStyle(color: const Color(0xFF53E88B), fontSize: text * 12, fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: height / 20),
                    Container(
                      height: height / 14,
                      width: width / 2.8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF53E88B),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: text * 18),
                        ),
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
