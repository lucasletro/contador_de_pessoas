import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title:"Contador de pessoas",
      home: Home()));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode Entrar!";

  void _changePeople(int delta){
    setState(() {
      _people += delta;

      if(_people < 0){
        _infoText = "Mundo invertido?!";
      }else if(_people <= 10){
        _infoText = "Pode Entrar!";
      }else{
        _infoText = "Lotado!";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text('Contador de Pessoass'),),
        body:
        Container(
          // color: Colors.amber,
            child:

      Stack(
      children:[
        Image.asset(
          "images/nova.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ), //image.asset
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              //  color: Colors.purple,
              child: Text(
                "Pessoas: $_people",
                style:
                TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            ),
            Container(
              //color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    // color: Colors.deepOrange,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FlatButton(
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: 40.0, color: Colors.black),
                        ),
                        onPressed: () {
                          _changePeople(1);
                          },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        _changePeople(-1);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Text(
                _infoText,
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0)
            ),
          ],
        ),
      ],
    ),
    ),
    );
  }
}





