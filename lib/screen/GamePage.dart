import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopupMenuButton<int> (
      icon: Icon(Icons.sort),
      onSelected: (value) {
        if(value == 0){
          print("1");
        }
        else if(value == 1){
          print("2");
        }
        else{
          print("3");
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(value: 0, child: Text("1"),),
          PopupMenuItem(value: 1, child: Text("2"),),
          PopupMenuItem(value: 2, child: Text("3"),)
        ];
      },
    );
  }
}
