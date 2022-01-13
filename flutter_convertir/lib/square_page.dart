import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SquarePage extends StatefulWidget {
  static const tag = "Square_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SquarePage> {


  toto(text,String) {


    if(text != 0 && String == 'centi'){
      Nombre_centimetre = (double.parse('$text')*1).toDouble();
      Nombre_metre = (double.parse('$text') / 1e4).toDouble();
      Nombre_acre = (double.parse('$text')/ 4.047e7).toDouble();
      Nombre_hectar = (double.parse('$text') ~/ 1e8).toDouble();
      Nombre_kilo = (double.parse('$text') ~/ 1e10).toDouble();

    }

    if(text != 0 && String == 'metre'){
      Nombre_centimetre = (double.parse('$text')*10000).toDouble();
      Nombre_metre = (double.parse('$text')).toDouble();
      Nombre_acre = (double.parse('$text') ~/ 4047).toDouble();
      Nombre_hectar = (double.parse('$text') ~/  10000).toDouble();
      Nombre_kilo = (double.parse('$text') ~/ 1e6).toDouble();

    }
    if(text != 0 && String == 'acre'){
      Nombre_centimetre = (double.parse('$text')*4.047e7).toDouble();
      Nombre_metre = (double.parse('$text')*4047).toDouble();
      Nombre_acre = (double.parse('$text')).toDouble();
      Nombre_hectar = (double.parse('$text') ~/  2.471).toDouble();
      Nombre_kilo = (double.parse('$text') ~/ 247).toDouble();

    }

    if(text != 0 && String == 'hect'){
      Nombre_centimetre = (double.parse('$text')*1e8).toDouble();;
      Nombre_metre = (double.parse('$text')*10000).toDouble();
      Nombre_acre = (double.parse('$text')*2.471).toDouble();
      Nombre_hectar = (double.parse('$text')).toDouble();
      Nombre_kilo = (double.parse('$text') ~/ 100).toDouble();

    }

    if(text != 0 && String == 'kilo'){
      Nombre_centimetre = (double.parse('$text')*1e10).toDouble();
      Nombre_metre = (double.parse('$text')*1e6).toDouble();
      Nombre_acre = (double.parse('$text')*247).toDouble();
      Nombre_hectar = (double.parse('$text')*100).toDouble();
      Nombre_kilo = (double.parse('$text')).toDouble();

    }






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

  double Nombre_centimetre = 0;
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

                onChanged: (text) {
                  toto(text, "centi");
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
                onChanged: (text) {
                  toto(text, "metre");
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
                onChanged: (text) {
                  toto(text,'acre');
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
                onChanged: (text) {
                  toto(text, 'hect');
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
                onChanged: (text) {
                  toto(text,'kilo');
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


