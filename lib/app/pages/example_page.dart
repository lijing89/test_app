import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('案例欣赏'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('案例欣赏'),
            ),
        ),
    );
  }
}
