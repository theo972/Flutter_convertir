import 'dart:developer';
import 'dart:math';

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


    if (textField == "" ) {
      return "";
    }


    else {
      String res = "";
      int nb = int.parse(textField);
      if (nb < 0 || nb > 3999){
        res = "Pas de triche ! Les romains n'avaient pas de nombre plus grand que 3999";
        return res;
      }
      //ICI
      for  (res = ''; nb >= 1000 ; nb = nb - 1000){
        res = res + "M";
      }
      for (res = res ; nb >= 900; nb = nb - 900){
        res = res + "CM";
      }
      for (res = res ; nb >= 500 ; nb = nb - 500){
        res = res + "D";
      }
      for (res = res ; nb >= 400 ; nb = nb - 400){
        res = res + "CD";
      }
      for (res = res ; nb >= 100 ; nb = nb - 100){
        res = res + "C";
      }
      for (res = res ; nb >= 90 ; nb = nb - 90){
        res = res + "XC";
      }
      for (res = res ; nb >= 50 ; nb = nb - 50){
        res = res + "L";
      }
      for (res = res ; nb >= 40 ; nb = nb - 40){
        res = res + "XL";
      }
      for (res = res ; nb >= 10 ; nb = nb - 10){
        res = res + "X";
      }
      for (res = res ; nb >= 9 ; nb = nb - 9){
        res = res + "IX";
      }
      for (res = res ; nb >= 5 ; nb = nb - 5){
        res = res + "V";
      }
      for (res = res ; nb >= 4 ; nb = nb - 4){
        res = res + "IV";
      }
      for (res = res ; nb >= 1 ; nb = nb - 1){
        res = res + "I";
      }
      //A ICI
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
