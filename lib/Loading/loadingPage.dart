import 'dart:async';
import 'package:euromil/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  //On va instancier un timer
  Timer _timer;

  _LoadingPageState() {
    //On met le timer à 5 secondes
    _timer = new Timer(const Duration(seconds: 5), () {
      setState(() {
        //Après 5 secondes on va changer de page
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomeScreen()),
            (Route<dynamic> route) => false);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  //Visuel de la page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white30,
      body: Container(
        color: Colors.white30,
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.20),
            Text(
              "EuroMil",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.20),
            const SpinKitPulse(
              color: Colors.white,
              size: 150.0,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.10),
            Text("Copyright Loris Clivaz\n   Version 1.0",
                style: TextStyle(color: Colors.white70, fontSize: 20.0))
          ],
        ),
      ),
    ));
  }
}
