import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid(),
  ));
}

class Grid extends StatelessWidget {
  var images = [

    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",

    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
    "https://tse3.mm.bing.net/th?id=OIP.94ScUnD1wDHT7g1HWtXrQQHaEx&pid=Api&P=0",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyGrid"),
      ),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Image.network(images[index]);
        },
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
      ),
    );
  }
}
