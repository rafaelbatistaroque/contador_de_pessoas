import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Contator de pessoas",
    home: Column(
      children: <Widget>[
        Text(
          "Pessoas: 0",
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        )
      ],
    )
  ));
}