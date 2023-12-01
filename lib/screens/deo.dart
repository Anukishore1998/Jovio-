import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/deocom.dart';

class Deo extends StatefulWidget {
  const Deo({super.key});

  @override
  State<Deo> createState() => _DeoState();
}

class _DeoState extends State<Deo> {
  final _demo = [
    {
      'event': 'Event Details',
      'date': 'Sep 25, 2023',
      'time': '10:30 am - 12:30 pm',
      's.no': '25 - 30'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Deo'),
        ),
        body: Column(
          children: [
            ..._demo.map((e) {
              return Deocom(child: e);
            }).toList(),
          ],
        ));
  }
}
