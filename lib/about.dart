import "package:flutter/material.dart";

class about extends StatelessWidget{

  final String pageTextChanged;

  about(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged,style: TextStyle(color: Colors.red,fontSize: 50),),
      ),
    );
  }


}