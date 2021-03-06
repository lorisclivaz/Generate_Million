import 'dart:math';
import 'package:euromil/Models/etoiles.dart';
import 'package:flutter/material.dart';
import 'package:euromil/Models/numbers.dart';
import 'package:nice_button/NiceButton.dart';

class FirstView extends StatefulWidget {
  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {

  //Import la classe model de nombres
  Numbers numbers = new Numbers(0,0,0,0,0);

  //Import la classe model de etoile
  Etoiles _etoiles = new Etoiles(0, 0);

  //Liste de nombre aléatoire
  List<int> numberList= [0,0,0,0,0];
  List<int> etoiles= [0,0];
  Random random = new Random();


  //Visuel de la page
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Nombre 1 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: numbers.nombre1.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Nombre 2 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: numbers.nombre2.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Nombre 3 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: numbers.nombre3.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Nombre 4 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: numbers.nombre4.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Nombre 5 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: numbers.nombre5.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),

            //Etoiles row
            Container(
              padding: EdgeInsets.only(bottom: 6, top: 15),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Etoile 1 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text:_etoiles.star1.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.50,
                    elevation: 4.0,
                    text: 'Etoile 2 :',
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                  NiceButton(
                    width: MediaQuery.of(context).size.width * 0.20,
                    elevation: 4.0,
                    text: _etoiles.star2.toString(),
                    background: Colors.white70,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),

            SizedBox(height:MediaQuery.of(context).size.height * 0.03,),
            //Button press and reset
            Row(
              children: <Widget>[
                NiceButton(
                   width: MediaQuery.of(context).size.width * 0.40,
                  text: "Press",
                  background: Colors.white12,
                  onPressed: () {
                    generate();

                  },
                ),

                NiceButton(
                  width: MediaQuery.of(context).size.width * 0.40,
                  text: "Reset",
                  background: Colors.white12,
                  onPressed: () {
                    reset();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //Methode qui va générer les nombres aléatoires
  void generate()
  {
    numberList.clear();
    etoiles.clear();


    for (var i = 0; i < 5; i++){
      int random_number = random.nextInt(50) + 1;
      if (!numberList.contains(random_number)) {
        numberList.add(random_number);
      }
    }

    for (var i = 0; i < 2; i++){
      int random_etoile = random.nextInt(12) + 1;
      if (!etoiles.contains(random_etoile)) {
        etoiles.add(random_etoile);
      }
    }

    //Import la classe model de nombres
    Numbers numbers2 = new Numbers(numberList[0],numberList[1],numberList[2],numberList[3],numberList[4]);

    //Import la classe model de etoile
    Etoiles _etoiles2 = new Etoiles(etoiles[0], etoiles[1]);

    setState(() {
      numbers = numbers2;
      _etoiles = _etoiles2;

    });

  }

  //Méthode qui va réinitialiser les nombres
  void reset()
  {
    Numbers numbersReset = new Numbers(0,0,0,0,0);
    Etoiles _etoilesReset = new Etoiles(0, 0);


    setState(() {
      numbers = numbersReset;
      _etoiles = _etoilesReset;
    });

  }
}
