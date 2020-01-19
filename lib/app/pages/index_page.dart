import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('主页'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('主页'),
            ),
        ),
    );
  }
}
