import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SquarePage extends StatefulWidget {
  static const tag = "Square_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SquarePage> {


  toto(textcenti) {
    Nombre_centimetre = '';
    Nombre_metre = '';
    Nombre_acre = '';
    Nombre_hectar = '';
    Nombre_kilo = '';

    Nombre_centimetre = textcenti;
    Nombre_metre = (double.parse('$textcenti') / 1e4).toString();
    Nombre_acre = (double.parse('$textcenti') / 4.047e7).toString();
    Nombre_hectar = (double.parse('$textcenti') / 1e8).toString();
    Nombre_kilo = (double.parse('$textcenti') / 1e10).toString();


    setState(() {
      myControllermetre.text = Nombre_metre;
      myControlleracre.text = Nombre_acre;
      myControllercenti.text = Nombre_centimetre;
      myControllerkilo.text = Nombre_kilo;
      myControllerhect.text = Nombre_hectar;
    });


  }

  static const String _title = "Conversion d'aires";

  String Nombre_centimetre = '';
  String Nombre_metre = '';
  String Nombre_acre = '';
  String Nombre_hectar = '';
  String Nombre_kilo = '';

  final myControllercenti = TextEditingController();
  final myControllermetre = TextEditingController();
  final myControlleracre = TextEditingController();
  final myControllerhect = TextEditingController();
  final myControllerkilo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllercenti,
                onChanged: (textcenti) {
                  toto(textcenti);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Centimètre carré ',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllermetre,
                onChanged: (textmetre) {
                  toto(textmetre);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'mètre carré',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControlleracre,
                onChanged: (textacre) {
                  toto(textacre);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Acre',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllerhect,
                onChanged: (texthect) {
                  toto(texthect);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'hectare',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllerkilo,
                onChanged: (textkilo) {
                  toto(textkilo);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kilometre carré',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
          ],
        ),
      ),

    );
  }
}


