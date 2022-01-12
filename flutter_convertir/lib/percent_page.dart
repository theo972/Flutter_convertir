import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PercentPage extends StatefulWidget {
  static const tag = "";

  @override
  _PercentPageState createState() => _PercentPageState();
}

class _PercentPageState extends State<PercentPage> {
  final myController = TextEditingController();
  final mySecondController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    mySecondController.dispose();
    super.dispose();
  }

  String formFieldValue = "1";

  // ignore: non_constant_identifier_names
  String setDiscount(String Text, String coeff) {
    double result = 0;
    var TextToDouble = double.parse(Text);
    var coeffToDouble = double.parse(coeff);
    result = (TextToDouble * (1 - (coeffToDouble / 100)) as double);
    String stringResult = result.toStringAsFixed(2);
    return stringResult;
  }

  String getEconomy(String prixAvant, String prixApres) {
    double economie = 0;
    var doublePrixBefore = double.parse(prixAvant);
    var doublePrixAafter = double.parse(prixApres);

    economie = doublePrixBefore - doublePrixAafter;
    String stringEconomie = economie.toStringAsFixed(2);
    return stringEconomie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Promotion"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: myController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
              ],
              decoration: InputDecoration(hintText: 'Entrez un prix'),
              onChanged: (String? newTextFieldValue) {
                setState(() {
                  formFieldValue = newTextFieldValue!;
                });
              },
            ),
            Container(
              width: 100,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: mySecondController,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^(\d+)?\.?\d{0,2}'))
                      ],
                      decoration: InputDecoration(hintText: ''),
                      onChanged: (String? newTextFieldValue) {
                        setState(() {
                          formFieldValue = newTextFieldValue!;
                        });
                      },
                    ),
                  ),
                  Expanded(child: Text("%"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: myController.text.isEmpty
                    ? null
                    : () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Text("Le nouveaux prix est de " +
                                      setDiscount(myController.text,
                                          mySecondController.text) +
                                      " euros, et vous avez économisé " +
                                      getEconomy(
                                          myController.text,
                                          setDiscount(myController.text,
                                              mySecondController.text)) +
                                      " euros"));
                            });
                      },
                child: const Text('Calculer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem {
  ListItem(int i, String s);
}
