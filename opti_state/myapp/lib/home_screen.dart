import 'package:flutter/material.dart';
import 'dash_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("OptiState"),
        backgroundColor: Colors.red,
      ),
      body: new DashItem(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings),
        backgroundColor: Colors.red,
      ),
    );
  }
}