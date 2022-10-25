import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_1/Login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // decoration: const BoxDecoration(
         // image: DecorationImage(
          //    fit: BoxFit.fill,
             // image: NetworkImage(
               //   "https://mir-s3-cdn-cf.behance.net/project_modules/disp/15549a14589707.5628669c64769.png")),
      //  ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///fetching image from asset way 1
              Image.asset(
                "assets/images/google color.png",
                height: 200,
                width: 200,
              ),

              ///fetching image from asset way 2
              //const Image(image: AssetImage("assets/images/google.png")),

              const Text("Google",
                  style: TextStyle(fontSize: 50, color: Colors.black12)),
            ],
          ),
        ),
      ),
    );
  }
}
