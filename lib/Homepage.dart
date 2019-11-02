import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var startcolors= Colors.white;

  var collist = [
    Colors.red,
    Colors.teal,
    Colors.yellow,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.black38,
    Colors.brown,
    
  ];

  sam(){
    var ran=Random().nextInt(collist.length);

    setState(() {
     startcolors=collist[ran]; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background Colors"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: startcolors,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 400.0),
              child: MaterialButton(
                color: Colors.blueGrey,
                height: 50.0,
                minWidth: 300.0,
                child: Text("Change Color", style: TextStyle(fontSize: 25.0),),
                onPressed:  sam,
              ),
            )
          ],
        ),
          
      ),
        
      
      
    );
  }
}