import 'file:///C:/Users/loris/StudioProjects/Generate_Million/lib/Loading/loadingPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_bottom_navigation.dart';
import 'home_screen.dart';



void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Map<int, Color> color = {
    50: const Color.fromRGBO(250, 202, 88, .1),
    100: const Color.fromRGBO(250, 202, 88, .2),
    200: const Color.fromRGBO(250, 202, 88, .3),
    300: const Color.fromRGBO(250, 202, 88, .4),
    400: const Color.fromRGBO(250, 202, 88, .5),
    500: const Color.fromRGBO(250, 202, 88, .6),
    600: const Color.fromRGBO(250, 202, 88, .7),
    700: const Color.fromRGBO(250, 202, 88, .8),
    800: const Color.fromRGBO(250, 202, 88, .9),
    900: const Color.fromRGBO(250, 202, 88, 1),
  };

  @override
  Widget build(BuildContext context) {
    final MaterialColor colorCustom = MaterialColor(0xFFFACA58, color);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: BottomNavigatorProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: colorCustom,
        ),
        home: LoadingPage(),
      ),
    );
  }
}