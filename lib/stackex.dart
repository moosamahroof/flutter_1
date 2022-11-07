import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStack(),));
}
class MyStack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack"),
        ),
        body: Stack(
          children: [
            Image.network(
                "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover),
            Positioned(
              // The Positioned widget is used to position the text inside the Stack widget
              bottom: 10,
              right: 10,

              child: Container(
                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                width: 300,
                color: Colors.black54,
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

               children: const[
                 Text(
                  'BMW 5 Series',
                  style: TextStyle(fontSize: 20, color: Colors.white,),

                ),
              ],
                ),
              ),
            )
          ],
        ),
    );
  }
}