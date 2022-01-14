import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DonneePage extends StatefulWidget {
  static const tag = "Donnee_page";

  @override
  _DonneesPageState createState() => _DonneesPageState();
}

class _DonneesPageState extends State<DonneePage> {


  void convert_octet(numberConvert, type) {


    if (type == "Octet"){
      kilooctet =  ((int.parse(numberConvert) / 1000)).toDouble();
      megaoctet =  ((int.parse(numberConvert) / 1e+6)).toDouble();
      gigaoctet =  ((int.parse(numberConvert) / 1e+9)).toDouble();
      teraoctet =  ((int.parse(numberConvert) / 1e+12)).toDouble();
      petaoctet =  ((int.parse(numberConvert) / 1e+15)).toDouble();
    }

    if (type == "Kilooctet"){
      octet =  ((int.parse(numberConvert) * 1000)).toString();
      megaoctet =  ((int.parse(numberConvert) / 1000)).toDouble();
      gigaoctet =  ((int.parse(numberConvert) / 1e+6)).toDouble();
      teraoctet =  ((int.parse(numberConvert) / 1e+9)).toDouble();
      petaoctet =  ((int.parse(numberConvert) / 1e+12)).toDouble();
    }

    if (type == "Megaoctet"){
      octet =  ((int.parse(numberConvert) * 1e+6)).toString();
      kilooctet =  ((int.parse(numberConvert) * 1000)).toDouble();
      gigaoctet =  ((int.parse(numberConvert) / 1000)).toDouble();
      teraoctet =  ((int.parse(numberConvert) / 1e+6)).toDouble();
      petaoctet =  ((int.parse(numberConvert) / 1e+9)).toDouble();
    }

    if (type == "Gigaoctet"){
      octet =  ((int.parse(numberConvert) * 1e+9)).toString();
      kilooctet =  ((int.parse(numberConvert) * 1e+6)).toDouble();
      megaoctet =  ((int.parse(numberConvert) * 1000)).toDouble();
      teraoctet =  ((int.parse(numberConvert) / 1000)).toDouble();
      petaoctet =  ((int.parse(numberConvert) / 1e+6)).toDouble();
    }

    if (type == "Teraoctet"){
      octet =  ((int.parse(numberConvert) * 1e+12)).toString();
      kilooctet =  ((int.parse(numberConvert) * 1e+9)).toDouble();
      megaoctet =  ((int.parse(numberConvert) * 1e+6)).toDouble();
      gigaoctet =  ((int.parse(numberConvert) * 1000)).toDouble();
      petaoctet =  ((int.parse(numberConvert) / 1000)).toDouble();
    }
    if (type == "Petaoctet"){
      octet =  ((int.parse(numberConvert) * 1e+15)).toString();
      kilooctet =  ((int.parse(numberConvert) * 1e+12)).toDouble();
      megaoctet =  ((int.parse(numberConvert) * 1e+9)).toDouble();
      gigaoctet =  ((int.parse(numberConvert) * 1e+6)).toDouble();
      teraoctet =  ((int.parse(numberConvert) * 1000)).toDouble();
    }

    setState(() {
      if(type != "Octet") {
        octetController.text = octet.toString();
        octetController.selection = TextSelection.fromPosition(TextPosition(offset: octetController.text.length));
      }

      if(type != "Kilooctet") {
        kilooctetController.text = kilooctet.toString();
        kilooctetController.selection = TextSelection.fromPosition(TextPosition(offset: kilooctetController.text.length));
      }

      if(type != "Megaoctet") {
        megaoctetController.text = megaoctet.toString();
        megaoctetController.selection = TextSelection.fromPosition(TextPosition(offset: megaoctetController.text.length));
      }

      if(type != "Gigaoctet") {
        gigaoctetController.text = gigaoctet.toString();
        gigaoctetController.selection = TextSelection.fromPosition(TextPosition(offset: gigaoctetController.text.length));
      }

      if(type != "Teraoctet") {
        teraoctetController.text = teraoctet.toString();
        teraoctetController.selection = TextSelection.fromPosition(TextPosition(offset: teraoctetController.text.length));
      }

      if(type != "Petaoctet") {
        petaoctetController.text = petaoctet.toString();
        petaoctetController.selection = TextSelection.fromPosition(TextPosition(offset: petaoctetController.text.length));
      }

    });

  }

  static const String _title = "Convertisseur Temperature";

  String octet = '';
  double kilooctet = 0;
  double megaoctet = 0;
  double gigaoctet = 0;
  double teraoctet = 0;
  double petaoctet = 0;

  final octetController = TextEditingController();
  final kilooctetController = TextEditingController();
  final megaoctetController = TextEditingController();
  final gigaoctetController = TextEditingController();
  final teraoctetController = TextEditingController();
  final petaoctetController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: octetController,

                onChanged: (octet) {
                  convert_octet(octet, 'Octet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Octet',
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
                controller: kilooctetController,
                onChanged: (kilooctet) {
                  convert_octet(kilooctet, 'Kilooctet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kilooctet',
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
                controller: megaoctetController,
                onChanged: (megaoctet) {
                  convert_octet(megaoctet, 'Megaoctet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mégaoctet',
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
                controller: gigaoctetController,
                onChanged: (gigaoctet) {
                  convert_octet(gigaoctet, 'Gigaoctet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gigaoctet',
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
                controller: teraoctetController,
                onChanged: (teraoctet) {
                  convert_octet(teraoctet, 'Teraoctet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Téraoctet',
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
                controller: petaoctetController,
                onChanged: (petaoctet) {
                  convert_octet(petaoctet, 'Pétaoctet');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pétaoctet',
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