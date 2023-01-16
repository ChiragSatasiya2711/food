import 'package:flutter/material.dart';

class DetailScrollarMode extends StatefulWidget {
  const DetailScrollarMode({Key? key}) : super(key: key);

  @override
  State<DetailScrollarMode> createState() => _DetailScrollarModeState();
}

class _DetailScrollarModeState extends State<DetailScrollarMode> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(children: [
          Container(
            height: height / 2.2,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/bk_scroolmode.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.1),
              child: Container(
                height: height * 1.08,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(height * 0.06),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: width / 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.03),
                        child: Center(
                          child: Image.asset(
                            "assets/icons/scroolar.png",
                            scale: 0.7,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.04,
                            width: width * 0.2,
                            decoration: BoxDecoration(
                              color: const Color(0xFF0C955224352),
                              borderRadius: BorderRadius.all(
                                Radius.circular(height),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Popular",
                              style: TextStyle(color: Colors.green, fontSize: text * 10, fontWeight: FontWeight.bold),
                            )),
                          ),
                          Row(
                            children: [
                              Image.asset("assets/icons/Icon location.png"),
                              Image.asset("assets/icons/icon love.png"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        "Wijie Bar and Resto",
                        style: TextStyle(color: Colors.white, fontSize: text * 22, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.03),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined, color: Colors.green, size: text * 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width / 32),
                              child: Text("19 Km", style: TextStyle(color: const Color(0xFFA3A3A3), fontSize: text * 12)),
                            ),
                            Icon(Icons.star_half, color: Colors.green, size: text * 20),
                            SizedBox(width: width * 0.03),
                            Text(
                              "4,8 Rating",
                              style: TextStyle(color: const Color(0xFFA3A3A3), fontSize: text * 12),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Most whole Alaskan Red King Crabs get broken down into \nlegs, claws, and lump meat. We offer all of these options \nas well in our online shop, but there is nothing like getting \nthe whole . . . .",
                        style: TextStyle(color: Colors.white70, fontSize: text * 9),
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Popular Menu",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: text * 15,
                            ),
                          ),
                          SizedBox(width: width * 0.4),
                          Text(
                            "View All",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: text * 10,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: height / 4,
                        width: width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Wrap(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      height: height / 4.4,
                                      width: width / 2.4,
                                      decoration: const BoxDecoration(
                                        color: Color(0x3DFFFFFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          index == 0
                                              ? Image.asset(
                                                  "assets/icons/image_pizza.png",
                                                )
                                              : Image.asset(
                                                  "assets/icons/image_chocklet.png",
                                                ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: height * 0.02),
                                            child: const Text(
                                              "Spacy fresh crab",
                                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          index == 0
                                              ? const Text(
                                                  "12 \$",
                                                  style: TextStyle(color: Colors.white30),
                                                )
                                              : const Text(
                                                  "16 \$",
                                                  style: TextStyle(color: Colors.white30),
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                            itemCount: 3),
                      ),
                      Text(
                        "Testimonials",
                        style: TextStyle(color: Colors.white, fontSize: text * 15, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: height / 2.6,
                        width: width / 1.2,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              color: const Color(0x3DFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(height * 0.015),
                              ),
                            ),
                            height: height / 6,
                            margin: EdgeInsets.symmetric(vertical: height * 0.016),
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.all(height * 0.02), child: index == 0 ? Image.asset("assets/icons/photo_profile_1.png") : Image.asset("assets/icons/photo_profile.png")),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dianne Russell",
                                      style: TextStyle(color: Colors.white, fontSize: text * 15),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: width / 2.6),
                                      child: Container(
                                        height: height * 0.045,
                                        width: width * 0.15,
                                        decoration: BoxDecoration(
                                          color: const Color(0x1115BE77),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(height),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.green,
                                              size: text * 21,
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: text * 17),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height * 0.02),
                                    Text(
                                      "This Is great, So delicious! You Must \nHere, With Your family . . ",
                                      style: TextStyle(color: Colors.white, fontSize: text * 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          itemCount: 2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
