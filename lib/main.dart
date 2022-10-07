import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ratiocalci/calcul.dart';
import 'package:ratiocalci/icons.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myApp createState() => _myApp();
}

final myControl1 = TextEditingController();
final myControl2 = TextEditingController();

String result = "";
bool should = false;

class _myApp extends State<myApp> {
  @override
  Widget build(BuildContext context) => Center(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RATIO CALCULATOR',
          home: Scaffold(
            backgroundColor: Colors.black,
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 2,
              centerTitle: true,
              title: Text(
                'RATIO CALCULATOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Shink',
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/a11.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 17, sigmaY: 17),
                    child: Container(
                      height: 480,
                      width: 290,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/9/9a/512x512_Dissolve_Noise_Texture.png"),
                          fit: BoxFit.cover,
                          opacity: 0.05,
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [Colors.white60, Colors.white10],
                        ),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 4, color: Colors.white54),
                      ),
                      child: ListView(
                        padding: EdgeInsets.all(40),
                        children: [
                          buildInput1(),
                          const SizedBox(height: 25),
                          buildInput2(),
                          const SizedBox(height: 25),
                          ElevatedButton(
                              child: Text("Calculate"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                onPrimary: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  result = calculate();
                                });
                              }),
                          const SizedBox(height: 35),
                          Text(
                            result,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'peralta',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

Widget buildInput1() => TextField(
      controller: myControl1,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Enter a number",
        labelText: "Paint",
        prefixIcon: Icon(MyFlutterApp.format_paint),
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );

Widget buildInput2() => TextField(
      controller: myControl2,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Enter a number",
        labelText: "Hardener",
        prefixIcon: Icon(MyFlutterApp.brandy_bottle),
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
