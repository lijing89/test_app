import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('联系我们'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('联系我们'),
            ),
        ),
    );
  }
}
