import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class BinaryPage extends StatefulWidget {
  static const tag = "Binary_page";

@override
_HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<BinaryPage> {

  decimale(text) {
    String decoctal = '';
    String deci = text;
    String decbinaire = '';
    String dechexadecimal='';
     int decbin = int.parse(text);
    int decoct = int.parse(text);
    int dechexa = int.parse(text);
    if(text != null) {

      for (int rest = 0; dechexa > 0; dechexa = dechexa ~/ 16) {
        String resteh = '';
        log(decbin);
        rest = dechexa % 16;
        if(rest == 10) {
          resteh = 'A';
          dechexadecimal = resteh + dechexadecimal;
        }
        if(rest == 11){

          resteh = 'B';
          dechexadecimal = resteh + dechexadecimal ;
        }if(rest == 12){
          resteh = 'C';
          dechexadecimal = resteh + dechexadecimal ;
        }if(rest == 13){
          resteh = 'D';
          dechexadecimal = resteh + dechexadecimal ;
        }if(rest == 14){
          resteh = 'E';
          dechexadecimal = resteh + dechexadecimal ;
        }if(rest == 15){
          resteh = 'F';
          dechexadecimal = resteh + dechexadecimal ;
        }
        else{
          resteh = rest.toString();
          dechexadecimal = resteh + dechexadecimal ;
        }
        log(rest);
      }
      for (int rest = 0; decbin > 0; decbin = decbin ~/ 2) {
        log(decbin);
        rest = decbin % 2;
        log(rest);
        String resteb = rest.toString();
        decbinaire = resteb + decbinaire ;
      }
      for (int rest = 0; decoct > 0; decoct = decoct ~/ 8) {
        log(decoct);
        rest = decoct % 8;
        log(rest);
        String reste = rest.toString();
        decoctal = reste + decoctal ;
      }
    }
    myControllerbin.text = decbinaire;
    myControllerbin.selection = TextSelection.fromPosition(TextPosition(offset: myControllerbin.text.length));
    myControlleroctal.text = decoctal;
    myControlleroctal.selection = TextSelection.fromPosition(TextPosition(offset: myControlleroctal.text.length));
    myControllerhex.text = dechexadecimal;
    myControllerhex.selection = TextSelection.fromPosition(TextPosition(offset: myControllerhex.text.length));
    myControllerdeci.text = deci;
    myControllerdeci.selection = TextSelection.fromPosition(TextPosition(offset: myControllerdeci.text.length));

  }
  binaire(text){

    String bintodec = int.parse(text, radix: 2).toString();
    decimale(bintodec);

  }

  Octal(text){
    String octtodec = int.parse(text, radix: 8).toString();
    decimale(octtodec);
  }
  Hexadecimal(text){
    String hextodec = int.parse(text, radix: 16).toString();
    decimale(hextodec);
  }


    static const String _title = "Conversion de donnée";
    int debut =0;
    int binair =0;
    int octal =0;
    int hexa = 0;
    int deci =0;


    final myControllerbin = TextEditingController();
    final myControlleroctal = TextEditingController();
    final myControllerdeci = TextEditingController();
    final myControllerhex = TextEditingController();

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
                controller: myControllerbin,
                onChanged: (text) {
                  binaire(text);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Binaire',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-1]',))
                  
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControlleroctal,
                onChanged: (text) {
                  Octal(text);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'octal',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-7]',))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllerdeci,
                onChanged: (text) {
                  decimale(text);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Decimal',
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
                controller: myControllerhex,
                onChanged: (text) {
                  Hexadecimal(text);
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hexadecimal',
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
