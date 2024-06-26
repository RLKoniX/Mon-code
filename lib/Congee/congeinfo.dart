import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Congeinfo extends StatefulWidget {
  const Congeinfo({super.key});

  @override
  State<Congeinfo> createState() => _CongeinfoState();
}

class _CongeinfoState extends State<Congeinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Row(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Type de congé'),
                      Text('Période'),
                      Text('Jour(s) ouvré(s)')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Type de congé'), Text('Période')],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
