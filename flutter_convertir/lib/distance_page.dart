import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DistancePage extends StatefulWidget {
  static const tag = "Distance_page";

  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<DistancePage> {


  toto(text, String) {
    if(text != 0 && String == 'nano') {
      nanometre = (double.parse('$text')).toDouble();
      milimetre = (double.parse('$text') / 1e6).toDouble();
      centimetre = (double.parse('$text') / 1e7).toDouble();
      decimetre = (double.parse('$text') / 1e8).toDouble();
      metre = (double.parse('$text') / 1e9).toDouble();
      kilometre = (double.parse('$text') / 1e12).toDouble();
      yard = (double.parse('$text') / 9.144e8).toDouble();
      pied = (double.parse('$text') / 3.048e8).toDouble();
      pouce = (double.parse('$text') / 2.54e7).toDouble();
    }
    if(text != 0 && String == 'mili') {
      nanometre = (double.parse('$text') * 1e6).toDouble();
      milimetre = (double.parse('$text')).toDouble();
      centimetre = (double.parse('$text') / 10).toDouble();
      decimetre = (double.parse('$text') / 100).toDouble();
      metre = (double.parse('$text') / 1000).toDouble();
      kilometre = (double.parse('$text') / 1e6).toDouble();
      yard = (double.parse('$text') / 914).toDouble();
      pied = (double.parse('$text') / 305).toDouble();
      pouce = (double.parse('$text') / 25.4).toDouble();
    }
    if(text != 0 && String == 'centi') {
      nanometre = (double.parse('$text') * 1e7).toDouble();
      milimetre = (double.parse('$text') * 10).toDouble();
      centimetre = (double.parse('$text')).toDouble();
      decimetre = (double.parse('$text') / 10).toDouble();
      metre = (double.parse('$text') / 100).toDouble();
      kilometre = (double.parse('$text') / 1e5).toDouble();
      yard = (double.parse('$text') / 91.44).toDouble();
      pied = (double.parse('$text') / 30.48).toDouble();
      pouce = (double.parse('$text') / 2.54).toDouble();
    }
    if(text != 0 && String == 'deci') {
      nanometre = (double.parse('$text') * 1e8).toDouble();
      milimetre = (double.parse('$text') * 100).toDouble();
      centimetre = (double.parse('$text') * 10).toDouble();
      decimetre = (double.parse('$text')).toDouble();
      metre = (double.parse('$text') / 10).toDouble();
      kilometre = (double.parse('$text') / 1e4).toDouble();
      yard = (double.parse('$text') / 9.144).toDouble();
      pied = (double.parse('$text') / 3.048).toDouble();
      pouce = (double.parse('$text') * 3.937).toDouble();
    }
    if(text != 0 && String == 'metre') {
      nanometre = (double.parse('$text') * 1e9).toDouble();
      milimetre = (double.parse('$text') * 1000).toDouble();
      centimetre = (double.parse('$text') * 100).toDouble();
      decimetre = (double.parse('$text') * 10).toDouble();
      metre = (double.parse('$text')).toDouble();
      kilometre = (double.parse('$text') / 1e3).toDouble();
      yard = (double.parse('$text') *1.094).toDouble();
      pied = (double.parse('$text') * 3.0281).toDouble();
      pouce = (double.parse('$text') * 39.37).toDouble();
    }
    if(text != 0 && String == 'kilo') {
      nanometre = (double.parse('$text') * 1e12).toDouble();
      milimetre = (double.parse('$text') * 1e6).toDouble();
      centimetre = (double.parse('$text') * 1e5).toDouble();
      decimetre = (double.parse('$text') * 10000).toDouble();
      metre = (double.parse('$text') * 1e3).toDouble();
      kilometre = (double.parse('$text')).toDouble();
      yard = (double.parse('$text') *1094).toDouble();
      pied = (double.parse('$text') * 3281).toDouble();
      pouce = (double.parse('$text') * 39370).toDouble();
    }
    if(text != 0 && String == 'yard') {
      nanometre = (double.parse('$text') * 9.144e8).toDouble();
      milimetre = (double.parse('$text') * 914.4).toDouble();
      centimetre = (double.parse('$text') * 91.44).toDouble();
      decimetre = (double.parse('$text') * 9.144).toDouble();
      metre = (double.parse('$text') /1.094).toDouble();
      kilometre = (double.parse('$text') / 1094).toDouble();
      yard = (double.parse('$text')).toDouble();
      pied = (double.parse('$text') * 3).toDouble();
      pouce = (double.parse('$text') * 36).toDouble();
    }
    if(text != 0 && String == 'pied') {
      nanometre = (double.parse('$text') * 3.048e+8).toDouble();
      milimetre = (double.parse('$text') * 305).toDouble();
      centimetre = (double.parse('$text') * 30.48).toDouble();
      decimetre = (double.parse('$text') * 3.048).toDouble();
      metre = (double.parse('$text') /3.281).toDouble();
      kilometre = (double.parse('$text') / 3281).toDouble();
      yard = (double.parse('$text') * 3).toDouble();
      pied = (double.parse('$text')).toDouble();
      pouce = (double.parse('$text') * 12).toDouble();
    }
    if(text != 0 && String == 'pied') {
      nanometre = (double.parse('$text') * 3.048e+8).toDouble();
      milimetre = (double.parse('$text') * 305).toDouble();
      centimetre = (double.parse('$text') * 30.48).toDouble();
      decimetre = (double.parse('$text') * 3.048).toDouble();
      metre = (double.parse('$text') /3.281).toDouble();
      kilometre = (double.parse('$text') / 3281).toDouble();
      yard = (double.parse('$text') / 3).toDouble();
      pied = (double.parse('$text')).toDouble();
      pouce = (double.parse('$text') * 12).toDouble();
    }
    if(text != 0 && String == 'pouce') {
      nanometre = (double.parse('$text') * 2.54e+7).toDouble();
      milimetre = (double.parse('$text') * 25.4).toDouble();
      centimetre = (double.parse('$text') * 2.54).toDouble();
      decimetre = (double.parse('$text') / 3.937).toDouble();
      metre = (double.parse('$text') /39.37).toDouble();
      kilometre = (double.parse('$text') / 39370).toDouble();
      yard = (double.parse('$text') / 36).toDouble();
      pied = (double.parse('$text') / 12).toDouble();
      pouce = (double.parse('$text')).toDouble();
    }
    setState(() {
      myControllernano.text = nanometre.toString();
      myControllernano.selection = TextSelection.fromPosition(TextPosition(offset: myControllernano.text.length));
      myControllermili.text = milimetre.toString();
      myControllermili.selection = TextSelection.fromPosition(TextPosition(offset: myControllermili.text.length));
      myControllerdeci.text = decimetre.toString();
      myControllerdeci.selection = TextSelection.fromPosition(TextPosition(offset: myControllerdeci.text.length));
      myControllermetre.text = metre.toString();
      myControllermetre.selection = TextSelection.fromPosition(TextPosition(offset: myControllermetre.text.length));
      myControllerkilo.text = kilometre.toString();
      myControllerkilo.selection = TextSelection.fromPosition(TextPosition(offset: myControllerkilo.text.length));
      myControlleryard.text = yard.toString();
      myControlleryard.selection = TextSelection.fromPosition(TextPosition(offset: myControlleryard.text.length));
      myControllerpied.text = pied.toString();
      myControllerpied.selection = TextSelection.fromPosition(TextPosition(offset: myControllerpied.text.length));
      myControllerpouce.text = pouce.toString();
      myControllerpouce.selection = TextSelection.fromPosition(TextPosition(offset: myControllerpouce.text.length));
      myControllercenti.text = centimetre.toString();
      myControllercenti.selection = TextSelection.fromPosition(TextPosition(offset: myControllercenti.text.length));
    });


  }

  static const String _title = "Conversion de distance";

  double nanometre =0;
  double milimetre =0;
  double centimetre = 0;
  double decimetre =0;
  double metre = 0;
  double kilometre =0;
  double yard =0;
  double pied=0;
  double pouce=0;

  final myControllernano = TextEditingController();
  final myControllermili = TextEditingController();
  final myControllerdeci = TextEditingController();
  final myControlleryard = TextEditingController();
  final myControllerkilo = TextEditingController();
  final myControllermetre = TextEditingController();
  final myControllerpied = TextEditingController();
  final myControllerpouce = TextEditingController();
  final myControllercenti = TextEditingController();

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
                controller: myControllernano,
                onChanged: (text) {
                  toto(text,'nano');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nanomètre ',
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
                controller: myControllermili,
                onChanged: (text) {
                  toto(text,'mili');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Milimètre',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllermili,
                onChanged: (text) {
                  toto(text,'centi');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Centimètre',
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
                  toto(text,'deci');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Décimètre',
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
                  toto(text,'metre');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'metre',
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
                  labelText: 'Kilometre',
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
                controller: myControlleryard,
                onChanged: (text) {
                  toto(text,'yard');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'yard',
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
                controller: myControllerpied,
                onChanged: (text) {
                  toto(text,'pied');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'pied',
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
                controller: myControllerpouce,
                onChanged: (text) {
                  toto(text,'pouce');
                },
                style: TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'pouce',
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



