import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network("http://cm1.narvii.com/7290/2481aa6e67e2cdcbc938da46339d8a0b5a3d3ff1_00.jpg",
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Tofu Chan", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                Text("Feb 16, 2020", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 50,
                  child: Icon(Icons.notifications, color: Theme.of(context).primaryColor,
                  size: 35,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  width: 20,
                  height: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                    ),
                    width: 20,
                    height: 20,
                    child: Center(
                      child: Text(
                        '17',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 9,
                        ),
                      ),
                    )
                  ),
                ),
              ],
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Top Activities", style: TextStyle(color: Colors.grey, fontSize: 25,),),
                Container(
                  child: Row (children: <Widget>[                     
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).primaryColor.withAlpha(50),
                        ),
                        child: Image.asset(
                          'assets/running.png',
                          width: 50,
                        ),
                      ),

                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).primaryColor.withAlpha(50),
                        ),          
                        child: Image.asset(
                          'assets/weights.png',
                          width: 50,
                        ),              
                      ),

                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).primaryColor.withAlpha(50),
                        ),              
                        child: Image.asset(
                          'assets/soccer.png',
                          width: 50,
                        ),          
                      ),

                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).primaryColor.withAlpha(50),
                        ),                   
                        child: Image.asset(
                          'assets/hiking.png',
                          width: 50,
                        ),     
                      ),
                                            
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Text("TOTAL STEPS", style: TextStyle(color: Colors.red, fontSize: 24),),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "0 Steps".toUpperCase(),
                            style: TextStyle(color: Colors.grey,
                            ),
                          ),
                          Text(
                            "7500 Steps".toUpperCase(),
                            style: TextStyle(color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.7,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Theme.of(context).primaryColor.withAlpha(30),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Miles ran".toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "You ran 14.5 miles today",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              "DISTANCE",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "16.0",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " mi",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Text(
                              "CALORIES",
                              style: TextStyle(
                                 color: Theme.of(context).primaryColor,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "259",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " cal",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "HEALTH PROGRESS",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/heart.png",
                          width: 40,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )

        )
      ),
    );
  }
}