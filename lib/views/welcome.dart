import 'package:administration/views/login.dart';
import 'package:flutter/material.dart';

class Window extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Window name"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
