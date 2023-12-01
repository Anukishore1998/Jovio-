import 'package:flutter/material.dart';

class Pick extends StatefulWidget {
  const Pick({super.key});

  @override
  State<Pick> createState() => _PickState();
}

class _PickState extends State<Pick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick & choose'),
      ),
      body: Container(
        child: Column(),
      ),
    );
  }
}
