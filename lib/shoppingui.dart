import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.builder(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: storeItems.length ,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
            },
            child: Card(
              child: Stack(
                alignment: FractionalOffset.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(storeItems[index].itemImage!)
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    child: Text(storeItems[index].Name!,
                      style: TextStyle (fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                  )
                ],
              ),
            ),
          );
        },),
    );
  }

}