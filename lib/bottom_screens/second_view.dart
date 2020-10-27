import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(
        initialUrl: 'https://jeux.loro.ch/games/euromillions/results',
      )
      );
  }
}