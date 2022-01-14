import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';


class DatePage extends StatefulWidget {
  static const tag = "Date_page";
  @override
  DatePageState createState() => DatePageState();
}

class DatePageState extends State<DatePage> {

  //Déclaration des variables
  String _firstDate = '';
  String _secondDate = '';

  String days = '0';
  String months = '0';
  String years ='0';

  // Fonctions pour récupérer les Années/Heures/Jours/Mois entre les deux dates

  void daysFunction (String _firstDate, String _secondDate) {
    DateTime firstDate = DateTime.parse(_firstDate);
    DateTime secondDate = DateTime.parse(_secondDate);
    int diffDays = firstDate.difference(secondDate).inDays;
    if( diffDays < 0){
      diffDays = diffDays * -1;
    }
    String diffDaysToString = diffDays.toStringAsFixed(2);
    setState(() {
      days = diffDaysToString;
    });
  }

  void monthsFunction (String _firstDate, String _secondDate) {
    DateTime firstDate = DateTime.parse(_firstDate);
    DateTime secondDate = DateTime.parse(_secondDate);
    int diffDays = firstDate.difference(secondDate).inDays;
    double diffMonths = diffDays / 30.5;
    if( diffMonths < 0){
      diffMonths = diffMonths * -1;
    }
    String diffMonthsToString = diffMonths.toStringAsFixed(2);
    setState(() {
      months = diffMonthsToString;
    });
  }

  void yearsFunction (String _firstDate, String _secondDate) {
    DateTime firstDate = DateTime.parse(_firstDate);
    DateTime secondDate = DateTime.parse(_secondDate);
    int diffDays = firstDate.difference(secondDate).inDays;
    var diffYears = diffDays / (30.5 * 12);
    if( diffYears < 0){
      diffYears = diffYears * -1;
    }
    String diffYearsToString = diffYears.toStringAsFixed(2);
    setState(() {
      years = diffYearsToString;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temps écouler entre deux dates"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column (
          children: [
            const Text("Quelle est la première date :"),

            DateTimePicker(
              type: DateTimePickerType.date,
              firstDate: DateTime(0000),
              lastDate: DateTime(9999),
              icon: Icon(Icons.event),
              dateLabelText: 'Première Date',
              onChanged: (val) => setState(() => _firstDate = val),
              validator: (val) {
                setState(() => _firstDate = val ?? '');
                return null;
              },
              onSaved: (val) => setState(() => _firstDate = val ?? ''),
            ),

            SizedBox(height: 30),

            const Text("Quelle est la seconde date :"),

            DateTimePicker(
              type: DateTimePickerType.date,
              firstDate: DateTime(0000),
              lastDate: DateTime(9999),
              icon: Icon(Icons.event),
              dateLabelText: 'Seconde Date',
              onChanged: (val) => setState(() => _secondDate = val),
              validator: (val) {
                setState(() => _secondDate = val ?? '');
                return null;
              },
              onSaved: (val) => setState(() => _secondDate = val ?? ''),
            ),

            SizedBox(height: 30),

            Text(
              'La première date est le :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            SelectableText(_firstDate),
            SizedBox(height: 30),
            Text(
              'La Seconde date est le :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            SelectableText(_firstDate),
            SizedBox(height: 30),
            Text(
              'Il y a :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SelectableText(years + ' années ' + months + ' mois ' + days + ' jours d écarts entre ces deux dates'),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                daysFunction(_firstDate,_secondDate);
                monthsFunction(_firstDate,_secondDate);
                yearsFunction(_firstDate,_secondDate);
              },
              child: Text('Go !'),
            ),
          ],
        ),
      ),
    );
  }
}