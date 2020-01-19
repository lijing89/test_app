import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('关于我们'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('关于我们'),
            ),
        ),
    );
  }
}
