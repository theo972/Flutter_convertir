import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class AgePage extends StatefulWidget {
  static const tag = "Age_page";
  @override
  AgePageState createState() => AgePageState();
}

class AgePageState extends State<AgePage> {

  //Déclaration des variables
  String _birthday = '';
  DateTime today = DateTime.now();
  String hours = '0';
  String days = '0';
  String months = '0';
  String years ='0';
  String NextBInDays = '0';



  void nextBirthday (String _birthday) {

    DateTime birthday = DateTime.parse(_birthday);

    if (birthday.day <= today.day && birthday.month <= today.month){
      DateTime nextBirthday = DateTime(today.year +1, birthday.month, birthday.day);
      int diffNext = (nextBirthday.difference(today).inDays);
      String diffNextToString = diffNext.toStringAsFixed(2);
      setState(() {
        NextBInDays = diffNextToString; // Refresh
      });
    }
    else {
      DateTime nextBirthday = DateTime(today.year, birthday.month, birthday.day);
      int diffNext = nextBirthday.difference(today).inDays;
      String diffNextToString = diffNext.toStringAsFixed(2);
      setState(() {
        NextBInDays = diffNextToString;
      });
    }
  }

  // Fonctions pour récupérer les Années/Heures/Jours/Mois depuis la naissance
  void hoursFunction (String _birthday) {
    DateTime birthday = DateTime.parse(_birthday); //On convertit la date récupérée (String) en date
    int diffHours = today.difference(birthday).inHours; //On fait la différence entre la date de naissance et la date d'aujourd'hui
    String diffHoursToString = diffHours.toStringAsFixed(2); //On convertit cette date en String
    setState(() {
      hours = diffHoursToString; // Refresh
    });
  }

  void daysFunction (String _birthday) {
    DateTime birthday = DateTime.parse(_birthday);
    int diffDays = today.difference(birthday).inDays;
    String diffDaysToString = diffDays.toStringAsFixed(2);
    setState(() {
      days = diffDaysToString;
    });
  }

  void monthsFunction (String _birthday) {
    DateTime birthday = DateTime.parse(_birthday);
    int diffDays = today.difference(birthday).inDays;
    double diffMonths = diffDays / 30.5;
    String diffMonthsToString = diffMonths.toStringAsFixed(2);
    setState(() {
      months = diffMonthsToString;
    });
  }

  void yearsFunction (String _birthday) {
    DateTime birthday = DateTime.parse(_birthday);
    int diffYears = today.difference(birthday).inDays;
    var nombreYears = diffYears / (30.5 * 12);
    String diffYearsToString = nombreYears.toStringAsFixed(2);
    setState(() {
      years = diffYearsToString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mais quel age j'ai ?"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column (
          children: [
            const Text("Donne-moi la date à laquelle tu es née :"),

            DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(0000),
              lastDate: DateTime.now(),
              icon: Icon(Icons.event),
              dateLabelText: 'Date',
              timeLabelText: "Hour",
              onChanged: (val) => setState(() => _birthday = val,
              ),
              validator: (val) {
                setState(() => _birthday = val ?? '');
              },
              onSaved: (val) => setState(() => _birthday = val ?? ''),
            ),

            SizedBox(height: 30),

            Text(
              'Tu es donc née le :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            SelectableText(_birthday),
            SizedBox(height: 30),
            Text(
              'Soit :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SelectableText(years + ' années'),
            SizedBox(height: 20),
            Text(
              'Ou :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SelectableText(months + ' mois'),
            SizedBox(height: 20),
            Text(
              'Ou :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SelectableText(days + ' jours'),
            SizedBox(height: 20),
            Text(
              'Ou :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SelectableText(hours + ' heures'),
            SizedBox(height: 20),
            Text(
              'Tu veux vraiment savoir ? :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                hoursFunction(_birthday);
                daysFunction(_birthday);
                monthsFunction(_birthday);
                yearsFunction(_birthday);
                nextBirthday(_birthday);
                },
              child: Text('Oui !'),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text("Ton prochain anniverssaire est dans :",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              NextBInDays + ' jours',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}