import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RomainPage extends StatefulWidget {
  static const tag = "Romain_page";

  @override
  _RomainPageState createState() => _RomainPageState();
}

class _RomainPageState extends State<RomainPage> {
  String formFieldValue = "0";

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  String convertToRoman(String textField) {
    if (textField == "") {
      return "";
    } else {
      String res = '';
      int nb = int.parse(textField);
      if (nb >= 1000) {
        res += 'M';
        nb -= 1000;
      }
      if (nb >= 500) {
        res += 'D';
        nb -= 500;
      }
      if (nb >= 100) {
        res += 'C';
        nb -= 100;
      }
      if (nb >= 50) {
        res += 'L';
        nb -= 50;
      }
      while (nb >= 10) {
        res += 'X';
        nb -= 10;
      }
      if (nb == 9) {
        res += 'IX';
        nb -= 9;
      }
      if (nb >= 5) {
        res += 'V';
        nb -= 5;
      }
      if (nb == 4) {
        res += 'IV';
        nb -= 4;
      }
      while (nb > 0) {
        res += 'I';
        nb -= 1;
      }
      String resString = res.toString();
      return resString;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convertir en chiffre Romain"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          TextField(
            controller: myController,
            keyboardType: TextInputType.numberWithOptions(decimal: false),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
            ],
            decoration: InputDecoration(hintText: 'Entrez un nombre'),
            onChanged: (String? newTextFieldValue) {
              setState(() {
                formFieldValue = newTextFieldValue!;
              });
            },
          ),
          SizedBox(height: 50),
          Container(
              child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                  title: Text(
                convertToRoman(myController.text),
              ))
            ]),
          )),
        ]),
      ),
    );
  }
}
