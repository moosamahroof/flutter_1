import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_1/Login.darT';
// import 'package:flutter_1/login_with_validation.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.pink),
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

   // Timer(const Duration(seconds: 2), () {
   //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_with_Validation()));
  //  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/disp/15549a14589707.5628669c64769.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///fetching image from asset way 1
              Image.network(
                "https://media.istockphoto.com/id/1350595566/photo/cyber-security-firewall-interface-protection-concept-businesswoman-protecting-herself-from.jpg?s=612x612&w=is&k=20&c=jilPkBAnua5M94uXvDwsqPwGEIalo86uCnFkCR-Ltkk=",
                height: 200,
                width: 200,
              ),
              ///fetching image from asset way 2
              //const Image(image: AssetImage("assets/images/food.png")),
              const Text("MYAPP",
                  style: TextStyle(fontSize: 40, color: Colors.orange)),
            ],
          ),
        ),
      ),
    );

  }
}
