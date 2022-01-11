import 'package:flutter/material.dart';
import 'package:flutter_convertir/Romain_page.dart';
import 'package:flutter_convertir/age_page.dart';
import 'package:flutter_convertir/binary_pages.dart';
import 'package:flutter_convertir/date_page.dart';
import 'package:flutter_convertir/donnees_numerique.dart';
import 'package:flutter_convertir/percent_page.dart';
import 'package:flutter_convertir/square_page.dart';
import 'package:flutter_convertir/temperature_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text("Application conversion"),
        centerTitle: true ,
      ),
      body:

      GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),

          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              width: 25,
              padding: const EdgeInsets.all(2),
              child: Column(
                children: [
                  const Text("conversions de données numérique "),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(DonneePage.tag);},
                      icon:Icon(Icons.computer),iconSize: 100),
                ],
              ),

              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  const Text("information sur mon age "),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(AgePage.tag);},
                      icon:Icon(Icons.cake),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  const Text("Promotions"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(PercentPage.tag);},
                      icon:Icon(Icons.percent),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  const Text("calcule de date"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(DatePage.tag);},
                      icon:Icon(Icons.date_range),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                  children: [
                  const Text("distance"),
              IconButton(
                  onPressed:(){Navigator.of(context).pushNamed(DatePage.tag);},
                  icon:Icon(Icons.add_road),iconSize: 100),
                  ],
            ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  const Text("conversion en binaire"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(BinaryPage.tag);},
                      icon:Icon(Icons.numbers),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text("calcule d'aire"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(SquarePage.tag);},
                      icon:Icon(Icons.square),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text("Temperature"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(TempPage.tag);},
                      icon:Icon(Icons.thermostat),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text("conversion en chiffre romain"),
                  IconButton(
                      onPressed:(){Navigator.of(context).pushNamed(RomePage.tag);},
                      icon:Icon(Icons.shield),iconSize: 100),
                ],
              ),
              color: Color.fromARGB(255, 101, 147, 166),
            ),
          ],
        ),
    );
  }
}