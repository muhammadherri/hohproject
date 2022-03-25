// ignore: unused_import
import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;

import 'AdminPage/Products/products.dart';

class AdminPage extends StatefulWidget {
  AdminPage({this.username});
  final String username;
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("admin"),
      ),
      body: Center(
        child: new RaisedButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Products()),
          );
        }),
      ),
    );
  }
}
