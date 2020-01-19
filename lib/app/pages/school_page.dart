import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('APP学院'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('APP学院'),
            ),
        ),
    );
  }
}
