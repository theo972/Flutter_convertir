import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RomainPage extends StatefulWidget {
  static const tag = "";

  @override
  _RomainPageState createState() => _RomainPageState();
}

class _RomainPageState extends State<RomainPage> {
  String formFieldValue = "0";

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
          ]),
        ));
  }
}
