import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('五赞服务'),),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
                child: Text('五赞服务'),
            ),
        ),
    );
  }
}
