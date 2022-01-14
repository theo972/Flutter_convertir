import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_convertir/distance_page.dart';
import 'package:flutter_convertir/romain_page.dart';
import 'package:flutter_convertir/age_page.dart';
import 'package:flutter_convertir/binary_pages.dart';
import 'package:flutter_convertir/date_page.dart';
import 'package:flutter_convertir/donnees_numerique.dart';
import 'package:flutter_convertir/percent_page.dart';
import 'package:flutter_convertir/square_page.dart';
import 'package:flutter_convertir/temperature_page.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Conversion de données numériques",
      "Infos sur mon age ",
      "Calcul de promotions",
      "Calcul de dates",
      "Distances",
      "Conversion en binaire",
      "Calcul d'aires",
      "Conversion de températures",
      "Conversion en chiffres Romains",
    ];

    String getPageTag(int? index) {
      log('index fonction $index');
      String tag = '';
      if (index == 0) {
        tag = DonneePage.tag;
        return tag;
      } else if (index == 1) {
        tag = AgePage.tag;
        return tag;
      } else if (index == 2) {
        tag = PercentPage.tag;
        return tag;
      } else if (index == 3) {
        tag = DatePage.tag;
        return tag;
      } else if (index == 4) {
        tag = DistancePage.tag;
        return tag;
      } else if (index == 5) {
        tag = BinaryPage.tag;
        return tag;
      } else if (index == 6) {
        tag = SquarePage.tag;
        return tag;
      } else if (index == 7) {
        tag = TempPage.tag;
        return tag;
      } else if (index == 8) {
        tag = RomainPage.tag;
        return tag;
      } else {
        return "";
      }
    }

    final List<Widget> images = [
      Hero(
        tag: "Age_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Binary_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Date_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Distance_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Donnee_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Percent_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Romain_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Square_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Hero(
        tag: "Temp_page",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Application conversion"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Center(
                  child: Text('Choisis un utilitaire'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: VerticalCardPager(
                  textStyle: TextStyle(color: Colors.blue),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  onSelectedItem: (index) {
                    Navigator.of(context).pushNamed(getPageTag(index));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Application conversion"),
    //     centerTitle: true,
    //   ),
    //   body: GridView.count(
    //     primary: false,
    //     padding: const EdgeInsets.all(10),
    //     crossAxisSpacing: 8,
    //     mainAxisSpacing: 8,
    //     crossAxisCount: 3,
    //     children: <Widget>[
    //       Container(
    //         width: 25,
    //         padding: const EdgeInsets.all(2),
    //         child: Column(
    //           children: [
    //             const Text("conversions de données numérique "),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(DonneePage.tag);
    //                 },
    //                 icon: Icon(Icons.computer),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(4),
    //         child: Column(
    //           children: [
    //             const Text("information sur mon age "),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(AgePage.tag);
    //                 },
    //                 icon: Icon(Icons.cake),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(4),
    //         child: Column(
    //           children: [
    //             const Text("Promotions"),
    //             IconButton(
    //               onPressed: () {
    //                 Navigator.of(context).pushNamed(PercentPage.tag);
    //               },
    //               icon: Icon(Icons.sell_outlined, size: 50),
    //             )
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(4),
    //         child: Column(
    //           children: [
    //             const Text("calcule de date"),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(DatePage.tag);
    //                 },
    //                 icon: Icon(Icons.date_range),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(4),
    //         child: Column(
    //           children: [
    //             const Text("distance"),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(DatePage.tag);
    //                 },
    //                 icon: Icon(Icons.add_road),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(4),
    //         child: Column(
    //           children: [
    //             const Text("conversion en binaire"),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(BinaryPage.tag);
    //                 },
    //                 icon: Icon(Icons.blur_circular),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(8),
    //         child: Column(
    //           children: [
    //             const Text("calcule d'aire"),
    //             IconButton(
    //               onPressed: () {
    //                 Navigator.of(context).pushNamed(SquarePage.tag);
    //               },
    //               icon: Icon(Icons.stop_outlined, size: 50),
    //             )
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(8),
    //         child: Column(
    //           children: [
    //             const Text("Temperature"),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(TempPage.tag);
    //                 },
    //                 icon: Icon(Icons.thermostat),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.all(8),
    //         child: Column(
    //           children: [
    //             const Text("conversion en chiffre romain"),
    //             IconButton(
    //                 onPressed: () {
    //                   Navigator.of(context).pushNamed(RomainPage.tag);
    //                 },
    //                 icon: Icon(Icons.shield),
    //                 iconSize: 50),
    //           ],
    //         ),
    //         color: Color.fromARGB(255, 101, 147, 166),
    //       ),
    //     ],
    //   ),
    // );
  }
}
