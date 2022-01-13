import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SquarePage extends StatefulWidget {
  static const tag = "Square_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SquarePage> {


  toto(textcenti) {
    Nombre_centimetre = 0;

    Nombre_centimetre = int.parse(textcenti);
    Nombre_metre = double.parse('$textcenti') / 1e4;
    Nombre_acre = double.parse('$textcenti') / 4.047e7;
    Nombre_hectar = double.parse('$textcenti') / 1e8;
    Nombre_kilo = double.parse('$textcenti') / 1e10;


    setState(() {
      myControllermetre.text = Nombre_metre.toString();
      myControllermetre.selection = TextSelection.fromPosition(TextPosition(offset: myControllermetre.text.length));
      myControlleracre.text = Nombre_acre.toString();
      myControlleracre.selection = TextSelection.fromPosition(TextPosition(offset: myControlleracre.text.length));
      myControllercenti.text = Nombre_centimetre.toString();
      myControllercenti.selection = TextSelection.fromPosition(TextPosition(offset: myControllercenti.text.length));
      myControllerkilo.text = Nombre_kilo.toString();
      myControllerkilo.selection = TextSelection.fromPosition(TextPosition(offset: myControllerkilo.text.length));
      myControllerhect.text = Nombre_hectar.toString();
      myControllerhect.selection = TextSelection.fromPosition(TextPosition(offset: myControllerhect.text.length));
    });

  }

  static const String _title = "Conversion d'aires";

  int Nombre_centimetre = 0;
  double Nombre_metre = 0;
  double Nombre_acre = 0;
  double Nombre_hectar = 0;
  double Nombre_kilo = 0;

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
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
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
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
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


