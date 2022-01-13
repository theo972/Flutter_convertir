import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DistancePage extends StatefulWidget {
  static const tag = "Distance_page";

  @override
  _HomePageState createState() => _HomePageState();


}

class _HomePageState extends State<DistancePage> {


  toto(textnano) {
    nanometre ='';
    milimetre ='';
    centimetre = '';
    decimetre ='';
    metre = '';
    kilometre ='';
    yard ='';
    pied='';
    pouce='';

    nanometre = textnano;
    milimetre = (double.parse('$textnano') / 1e6).toString();
    centimetre = (double.parse('$textnano') / 1e7).toString();
    decimetre = (double.parse('$textnano') / 1e8).toString();
    metre = (double.parse('$textnano') / 1e9).toString();
    kilometre = (double.parse('$textnano') / 1e12).toString();
    yard = (double.parse('$textnano') / 9.144e8).toString();
    pied = (double.parse('$textnano') / 3.048e8).toString();
    pouce = (double.parse('$textnano') / 2.54e7).toString();


    setState(() {
      myControllernano.text = nanometre;
      myControllermili.text = milimetre;
      myControllerdeci.text = decimetre;
      myControllermetre.text = metre;
      myControllerkilo.text = kilometre;
      myControlleryard.text = yard;
      myControllerpied.text = pied;
      myControllerpouce.text = pouce;
      myControllercenti.text = centimetre;
    });


  }

  static const String _title = "Conversion de distance";

     String nanometre ='';
     String milimetre ='';
     String centimetre = '';
     String decimetre ='';
     String metre = '';
     String kilometre ='';
     String yard ='';
     String pied='';
     String pouce='';

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
                onChanged: (textnano) {
                  toto(textnano);
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
                onChanged: (textmili) {
                  toto(textmili);
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
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: myControllerdeci,
                onChanged: (textdeci) {
                  toto(textdeci);
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
                onChanged: (textyard) {
                  toto(textyard);
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
                onChanged: (textpied) {
                  toto(textpied);
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
                onChanged: (textpouce) {
                  toto(textpouce);
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
          ],
        ),
      ),

    );
  }
}



