import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position _currentPosition = Position(latitude: 9999);
  double _lastKnownLat;
  double _lastKnownLng;
  double _latSpeed;
  double _lngSpeed;
  double _absSpeed;
  double _minutesTravelingCar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentPosition != null)
              Text(
                  "${_absSpeed}\n LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"),
            FlatButton(
              child: Text("Start Tracking Speed"),
              onPressed: () {
                _sec5Timer();
              },
            ),
          ],
        ),
      ),
    );
  }

  _sec5Timer() {
    Timer.periodic(Duration(seconds: 60), (timer) {
      if (_currentPosition.latitude != 9999) {
        _lastKnownLat = _currentPosition.latitude;
        _lastKnownLng = _currentPosition.longitude;
      }
      _getCurrentLocation();
    });
  }

  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        _latSpeed = (_currentPosition.latitude - _lastKnownLat).abs() * 68.703 / 0.868976 * 60;
        _lngSpeed = (_currentPosition.longitude - _lastKnownLng).abs() * 60 / 0.868976 * 60;
        _absSpeed = sqrt(pow(_latSpeed,2) + pow(_lngSpeed,2));
        if (_absSpeed >= 30) {
          _minutesTravelingCar = _minutesTravelingCar + 1;
        }
      });
    }).catchError((e) {
      print(e);
    });

  }
}