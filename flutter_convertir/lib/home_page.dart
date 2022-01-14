import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_convertir/distance_page.dart';
import "dart:math";
import 'package:flutter_convertir/romain_page.dart';
import 'package:flutter_convertir/age_page.dart';
import 'package:flutter_convertir/binary_pages.dart';
import 'package:flutter_convertir/date_page.dart';
import 'package:flutter_convertir/donnees_numerique.dart';
import 'package:flutter_convertir/percent_page.dart';
import 'package:flutter_convertir/square_page.dart';
import 'package:flutter_convertir/temperature_page.dart';
import 'package:flutter_convertir/global.dart';

class HomePage extends StatefulWidget {
  static const tag = "Home_Page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void indexListChange(index) {
    setState(() {
      Global.IndexList = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Application conversion"),
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Style d'organisation"),
            ),
            ListTile(
              title: const Text('Grid'),
              onTap: () {
                Navigator.pop(context);
                indexListChange(0);
                Navigator.pushNamed(context, HomePage.tag);
              },
            ),
            ListTile(
              title: const Text('List'),
              onTap: () {
                print(Global.IndexList);
                Navigator.pop(context);
                indexListChange(1);
                Navigator.pushNamed(context, HomePage.tag);
              },
            ),
            ListTile(
              title: const Text('Card'),
              onTap: () {
                Navigator.pop(context);
                indexListChange(2);
                Navigator.pushNamed(context, HomePage.tag);
              },
            ),
          ],
        ),
      ),
      body: const listbody(),
    );
  }
}


class listbody extends StatefulWidget {
  const listbody({Key? key}) : super(key: key);

    @override
    gridListView createState() => gridListView();

}


class gridListView extends State<listbody> {
  @override
  Widget build(BuildContext context) {
    if (Global.IndexList == 0) {
      return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            width: 25,
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [
                const Text("conversions de données numérique "),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DonneePage.tag);
                    },
                    icon: Icon(Icons.computer),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("information sur mon age "),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AgePage.tag);
                    },
                    icon: Icon(Icons.cake),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("Promotions"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PercentPage.tag);
                  },
                  icon: Icon(Icons.sell_outlined, size: 25),
                )
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("calcule de date"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DatePage.tag);
                    },
                    icon: Icon(Icons.date_range),
                    iconSize: 25),
              ],

            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("distance"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DistancePage.tag);
                    },
                    icon: Icon(Icons.add_road),
                    iconSize: 25),
              ],
            ),

            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("conversion en binaire"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(BinaryPage.tag);
                    },
                    icon: Icon(Icons.blur_circular),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("calcule d'aire"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SquarePage.tag);
                  },
                  icon: Icon(Icons.stop_outlined, size: 25),
                )
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Temperature"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(TempPage.tag);
                    },
                    icon: Icon(Icons.thermostat),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("conversion en chiffre romain"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RomainPage.tag);
                  },
                  icon: Icon(Icons.shield,size:25),
                ),

              ],

            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
        ],
      );
    }
    if (Global.IndexList == 1){
      return ListView(
        primary: false,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            width: 25,
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [
                const Text("conversions de données numérique "),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DonneePage.tag);
                    },
                    icon: Icon(Icons.computer),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("information sur mon age "),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AgePage.tag);
                    },
                    icon: Icon(Icons.cake),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("Promotions"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PercentPage.tag);
                  },
                  icon: Icon(Icons.sell_outlined, size: 25),
                )
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("calcule de date"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DatePage.tag);
                    },
                    icon: Icon(Icons.date_range),
                    iconSize: 25),
              ],

            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("distance"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(DistancePage.tag);
                    },
                    icon: Icon(Icons.add_road),
                    iconSize: 25),
              ],
            ),

            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                const Text("conversion en binaire"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(BinaryPage.tag);
                    },
                    icon: Icon(Icons.blur_circular),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("calcule d'aire"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SquarePage.tag);
                  },
                  icon: Icon(Icons.stop_outlined, size: 25),
                )
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("Temperature"),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(TempPage.tag);
                    },
                    icon: Icon(Icons.thermostat),
                    iconSize: 25),
              ],
            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const Text("conversion en chiffre romain"),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RomainPage.tag);
                  },
                  icon: Icon(Icons.shield,size:25),
                ),

              ],

            ),
            color: Color.fromARGB(255, 101, 147, 166),
          ),
        ],
      );
    } else {
      return ListView (
        children: [
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.computer,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "conversions de données numérique",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(DonneePage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.cake,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "information sur mon age",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(AgePage.tag);
                  },
                ),

              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.sell_outlined,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "Promotions",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(PercentPage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.date_range,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "calcule de date",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(DatePage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.add_road,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "distance",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(DistancePage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.blur_circular,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "conversion en binaire",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(BinaryPage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.stop_outlined,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "calcule d'aire",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(SquarePage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.thermostat,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "Temperature",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(TempPage.tag);
                  },
                ),
              ],
            ),
          ),
          Card(
            color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon (
                      Icons.shield,
                      color: Colors.cyan,
                      size: 45
                  ),
                  title: Text(
                    "conversion en chiffre romain",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(RomainPage.tag);
                  },
                ),

              ],
            ),
          ),

        ],

      );
    }
  }

}

/*

 */
