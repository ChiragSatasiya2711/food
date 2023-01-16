import 'package:flutter/material.dart';

class MapPrOne extends StatefulWidget {
  const MapPrOne({Key? key}) : super(key: key);

  @override
  State<MapPrOne> createState() => _MapPrOneState();
}

class _MapPrOneState extends State<MapPrOne> {
  Map data = {
    "data": [
      {"Name": "chirag", "surname": "satasiya", "age": "19 year"},
      {"Name": "umesh", "surname": "kalsariya", "age": "18 year"},
      {"Name": "mohit", "surname": "asodariya", "age": "22 year"},
      {"Name": "meet", "surname": "lunagariya", "age": "20 year"},
      {"Name": "tushar", "surname": "dobariya", "age": "19 year"},
      {"Name": "utshv", "surname": "moradiya", "age": "19 year"},
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView.separated(
            itemCount: data["data"].length,
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(
                      data["data"][index]["Name"],
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      data["data"][index]["surname"],
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      data["data"][index]["age"],
                      style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    dense: true,
                    textColor: Colors.black,
                    tileColor: Colors.red,
                    visualDensity: VisualDensity.comfortable,
                    isThreeLine: true,
                    minVerticalPadding: 20,
                    leading: ClipPath(
                      child: Image.asset(
                        "assets/icons/google.png",
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
