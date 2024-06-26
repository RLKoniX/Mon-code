import 'dart:ui';
import './Congee/congecreate.dart';
import './Congee/congeinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Congeinfo())),
                child: const Card(
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Congés payés',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 16, 0, 104),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              '2j',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 14, 0, 92),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('JJ/MM/YY matin',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11)),
                                Text('JJ/MM/YY après midi',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11))
                              ],
                            ),
                            Chip(
                                label: Text(
                                  'Soumis',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 203, 200, 0),
                                      fontSize: 12),
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 248, 244, 26),
                                side: BorderSide.none,
                                labelPadding:
                                    EdgeInsets.only(right: 5, left: 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                          ],
                        ),
                      ])),
                ));
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Congecreate()));
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'alarm',
            icon: Icon(Icons.alarm),
          )
        ],
      ),
    );
  }
}
