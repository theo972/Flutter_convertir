import 'package:flutter/material.dart';


class TempPage extends StatefulWidget {
  static const tag = "Temperature_page";

  @override
  _TempPageState createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _formKey = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Celsius"), value: "Celsius"),
      DropdownMenuItem(child: Text("Fahrenheit"), value: "Fahrenheit"),
      DropdownMenuItem(child: Text("Kelvin"), value: "Kelvin"),
    ];
    return menuItems;
  }

  String selectedValue = "Fahrenheit";
  final myController = TextEditingController();
  String valueConvert = '';

  convertTemp() {
    if (selectedValue == "Celsius") {
/*
      valueConvert = parcemyController.text ;
*/
    }
    if (selectedValue == "Fahrenheit") {
      valueConvert = ((double.parse(myController.text) * 9 / 5) + 32).toString() + 'F';
      print(valueConvert);
    }
    if (selectedValue == "Kelvin"){

    }
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
            TextFormField(
              controller: myController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Entrez un prix'),
              validator: (value1) {
                if (value1 == null || value1.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            DropdownButton(
                value: selectedValue,
                items: dropdownItems,
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedValue = newvalue!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  convertTemp();
                },
                child: const Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListItem {
  ListItem(int i, String s);
}

