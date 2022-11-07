import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListWithSeparated(),));
}
class ListWithSeparated extends   StatelessWidget{

  var datas  = <String>['DATA 1','DATA 2','DATA 3'];
  var colors = <int>[600, 300, 100];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index){
            return Card(
              color:Colors.blue[colors[index]],
              child: Padding(
                padding: const EdgeInsets.all(50.0),
               child: Text(datas[index]),
              ),);
          },
          separatorBuilder: (context, index){
            return Divider(thickness: 5,color: Colors.cyan,);
          },
          itemCount: datas.length),
    );
  }

}