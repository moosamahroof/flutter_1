import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool android = true;

  bool flutter = false;

  bool ios = false;

  bool php = false;

  bool node = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'CheckBox ListTile Demo',
        ),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            value: android,
            onChanged: (bool? val) {
              setState(() {
                android = val!;
              });
            },
            activeColor: Colors.black,
            title: const Text("Android"),
            secondary: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png'),
            ),
          ),
          CheckboxListTile(
            value: flutter,
            onChanged: (bool? val) {
              setState(() {
                flutter = val!;
              });
            },
            activeColor: Colors.black,
            title: const Text("Flutter"),
            secondary: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png'),
            ),
          ),
          CheckboxListTile(
            value: ios,
            onChanged: (bool? val) {
              setState(() {
                ios = val!;
              });
            },
            activeColor: Colors.black,
            title: const Text("IOS"),
            secondary: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://cdn3.iconfinder.com/data/icons/social-media-logos-glyph/2048/5315_-_Apple-512.png'),
            ),
          ),
          CheckboxListTile(
            value: php,
            onChanged: (bool? val) {
              setState(() {
                php = val!;
              });
            },
            activeColor: Colors.black,
            title: const Text("PHP"),
            secondary: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/1920px-PHP-logo.svg.png'),
            ),
          ),
          CheckboxListTile(
            value: node,
            onChanged: (bool? val) {
              setState(() {
                node = val!;
              });
            },
            activeColor: Colors.black,
            title: const Text("Node"),
            secondary: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1280px-Node.js_logo.svg.png'),
            ),
          ),
        ],
      ),
    );
  }
}
