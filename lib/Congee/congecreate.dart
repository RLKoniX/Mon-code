import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Congecreate extends StatefulWidget {
  const Congecreate({super.key});

  @override
  State<Congecreate> createState() => _CongecreateState();
}

class _CongecreateState extends State<Congecreate> {
  String dropdownValue = 'Abcence familial';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Type de congé*'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  underline: Container(height: 2, color: Colors.black),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                        value: 'Abcence familial',
                        child: Text('Abcence familial')),
                    DropdownMenuItem(value: 'Two', child: Text('Two')),
                    DropdownMenuItem(value: 'Three', child: Text('Three')),
                    DropdownMenuItem(value: 'Four', child: Text('Four')),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
