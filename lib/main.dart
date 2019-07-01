import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Contator de pessoas",
    home: Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String infoText = "Pode entrar!";

  void _changePeople(int delta){
    setState(() {
      _people += delta;

      if (_people < 0)
        infoText = "Valores negativos!";
      else if (_people <= 10)
        infoText = "Há vagas";
      else
        infoText = "Lotado!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "img/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(infoText,
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}