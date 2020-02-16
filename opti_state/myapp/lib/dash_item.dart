import 'package:flutter/material.dart';

class DashItem extends StatelessWidget {

  final profile = new Container(
    child: new Column(children: <Widget>[
      new CircleAvatar(
        backgroundImage: NetworkImage("http://cm1.narvii.com/7290/2481aa6e67e2cdcbc938da46339d8a0b5a3d3ff1_00.jpg"),
        radius: 50,
      ),
    ],)
  );

  final user = new Container(
    child: new Column(
      children: <Widget>[
        new Text("Tofu Chan",style: TextStyle(fontSize: 25),),
      ],
    ),
  );

  final points = new Container(
    child: new Column(
      children: <Widget>[
        new Text("Points:", style: TextStyle(fontSize: 20),),
        new CircleAvatar(
          backgroundColor: Colors.red,
          child: new Text("5", style: TextStyle(fontSize: 30),), foregroundColor: Colors.white,
          radius: 25,
        ),
      ],
    ),
  );

  final dashboard = new Container(
    child: new Column(
      children: <Widget>[
        new Text("Test Dashboard"),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: new Column(children: <Widget>[
          new Row(
              children: <Widget>[
                Expanded(
                  child: profile
                ),
                Expanded(
                  child: user
                ),
                Expanded(
                  child: points
                ),
              ],
          ),
          // new Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: new Text("Test"),
          //     ),
          //     Expanded(
          //       child: new Text("Test"),
          //     ),
          //   ]
          // ),
        ],
        ),
      ),
    );
  }
}