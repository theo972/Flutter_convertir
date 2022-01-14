import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BinaryPage extends StatefulWidget {
  static const tag = "Binary_page";

@override
_HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<BinaryPage> {


  toto(text, String) {

    if(text != 0 && String == 'Bin') {
      binair = (double.parse('$text')).toDouble();
      octal = (double.parse('$text') * 1e6).toDouble();
      hexa = (double.parse('$text') * 1e5).toDouble();
      decimetre = (double.parse('$text') * 10000).toDouble();

    }
    if(text != 0 && String == 'octal') {
      binair = (double.parse('$text') * 9.144e8).toDouble();
      octal =  (double.parse('$text')).toDouble();
      hexa = (double.parse('$text') * 91.44).toDouble();
      decimetre = (double.parse('$text') * 9.144).toDouble();

    }
    if(text != 0 && String == 'Decimal') {
      binair = (double.parse('$text') * 3.048e+8).toDouble();
      octal = (double.parse('$text') * 305).toDouble();
      hexa =  (double.parse('$text')).toDouble();
      decimetre = (double.parse('$text') * 3.048).toDouble();

    }
    if(text != 0 && String == 'Hex') {
      binair = (double.parse('$text') * 2.54e+7).toDouble();
      octal = (double.parse('$text') * 25.4).toDouble();
      hexa =  (double.parse('$text')).toDouble();
      decimetre = (double.parse('$text') / 3.937).toDouble();

    }
    setState(() {
      myControllerbin.text = binair.toString();
      myControllerbin.selection = TextSelection.fromPosition(TextPosition(offset: myControllerbin.text.length));
      myControlleroctal.text = octal.toString();
      myControlleroctal.selection = TextSelection.fromPosition(TextPosition(offset: myControlleroctal.text.length));
      myControllerdeci.text = decimetre.toString();
      myControllerdeci.selection = TextSelection.fromPosition(TextPosition(offset: myControllerdeci.text.length));
      myControllerhex.text = hexa.toString();
      myControllerhex.selection = TextSelection.fromPosition(TextPosition(offset: myControllerhex.text.length));

    });


  }

  static const String _title = "Conversion de donnée";

  double binair =0;
  double octal =0;
  double hexa = 0;
  double decimetre =0;


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
                  toto(text,'Bin');
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
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControlleroctal,
                onChanged: (text) {
                  toto(text,'octal');
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
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllerdeci,
                onChanged: (text) {
                  toto(text,'Decimal');
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
                  toto(text,'Hex');
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
