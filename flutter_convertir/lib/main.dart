import 'package:flutter/material.dart';
import 'package:flutter_convertir/Romain_page.dart';
import 'package:flutter_convertir/age_page.dart';
import 'package:flutter_convertir/binary_pages.dart';
import 'package:flutter_convertir/date_page.dart';
import 'package:flutter_convertir/distance_page.dart';
import 'package:flutter_convertir/home_page.dart';
import 'package:flutter_convertir/donnees_numerique.dart';
import 'package:flutter_convertir/percent_page.dart';
import 'package:flutter_convertir/square_page.dart';
import 'package:flutter_convertir/temperature_page.dart';
import 'package:flutter_convertir/Romain_page.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {DonneePage.tag:(context)=>DonneePage(),
        AgePage.tag:(context)=>AgePage(),
        PercentPage.tag:(context)=>PercentPage(),
        DatePage.tag:(context)=>DatePage(),
        DistancePage.tag:(context)=>DistancePage(),
        BinaryPage.tag:(context)=>BinaryPage(),
        SquarePage.tag:(context)=>SquarePage(),
        TempPage.tag:(context)=>TempPage(),
        RomePage.tag:(context)=>RomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Coding ProjectFlutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }


}
