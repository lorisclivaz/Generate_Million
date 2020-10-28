import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class SecondView extends StatefulWidget {
  @override
  _SecondViewState createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  String url = 'https://jeux.loro.ch/games/euromillions/results';

  bool isLoading=true;

  final _key = UniqueKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: this.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center(
            child: CircularProgressIndicator(
            backgroundColor: Colors.black,


          ),)
              : Stack(),
        ],
      ),
    );
  }
}
