import 'package:flutter/material.dart';
import 'dashboard.dart';

class Welcome extends StatefulWidget {
  @override
  _Welcome createState() => _Welcome();
}

class _Welcome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 150, 25, 0),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('assets/OptiState.png',width: 300,),
                Padding(padding: EdgeInsets.only(top: 0),),
                Text('Your Personal', style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
                ),
                Text(
                  "Health Tracker".toUpperCase(), 
                  style: TextStyle(
                    fontSize: 35, 
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                "A fun, new, and innovative way to gain Life Insurance benefits",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=> Dashboard(),
                      ),
                    );
                },
                minWidth: double.infinity,
                height: 50,
                child: Text("Get Started".toUpperCase()),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                height: 50,
                textColor: Theme.of(context).primaryColor,
                child: Text("Sign In".toUpperCase()),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}