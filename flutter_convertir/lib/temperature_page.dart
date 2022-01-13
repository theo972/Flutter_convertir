import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class TempPage extends StatefulWidget {
  static const tag = "Temperature_page";

  @override
  _TempPageState createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {


  convert_temp(numberTemp, temp) {


    if (temp == "celsius"){
      fahrenheit = ((double.parse(numberTemp) * 9/5) + 32);
      kelvin = double.parse(numberTemp) + 273.15;
    }
    if (temp == 'fahrenheit') {

    }
    if (temp == 'kelvin') {

    }



    setState(() {
      celsiusController.text = celsius.toString();
      celsiusController.selection = TextSelection.fromPosition(TextPosition(offset: celsiusController.text.length));

      fahrenheitController.text = fahrenheit.toString();
      fahrenheitController.selection = TextSelection.fromPosition(TextPosition(offset: fahrenheitController.text.length));

      kelvinController.text = kelvin.toString();
      kelvinController.selection = TextSelection.fromPosition(TextPosition(offset: kelvinController.text.length));

    });

  }

  static const String _title = "Convertisseur Temperature";

  int celsius = 0;
  double fahrenheit = 0;
  double kelvin = 0;

  final celsiusController = TextEditingController();
  final fahrenheitController = TextEditingController();
  final kelvinController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 400.0,
              child: TextField(
                controller: celsiusController,

                onChanged: (celsius) {
                  convert_temp(celsius, 'celsius');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Celsius',
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
                controller: fahrenheitController,
                onChanged: (fahrenheit) {
                  convert_temp(fahrenheit, 'fahrenheit');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fahrenheit',
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
                controller: kelvinController,
                onChanged: (kelvin) {
                  convert_temp(kelvin, 'kelvin');
                },
                style: const TextStyle(
                  fontSize: 12.0,
                  height: 2.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kelvin',
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
