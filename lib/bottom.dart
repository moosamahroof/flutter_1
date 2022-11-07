import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyBottomnavbar()));
}

class MyBottomnavbar extends StatefulWidget {
  @override
  State<MyBottomnavbar> createState() => _MyBottomnavbarState();
}

class _MyBottomnavbarState extends State<MyBottomnavbar> {
  var bodies = <Widget>[
    const Card(
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("Homepage"),
      ),
    ),
    const Card(
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("search"),
      ),
    ),
    const Card(
      color: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("favorite"),
      ),
    ),
    const Card(
      color: Colors.black26,
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("profile"),
      ),
    ),
  ];
  int selectedindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottombar"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: bodies.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.pinkAccent,
        currentIndex: selectedindex,
        onTap: onitemtap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorite",
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "profile",
              backgroundColor: Colors.grey),
        ],
      ),
    );
  }
}
