import 'package:flutter/material.dart';
// import 'package:humanity/pages/home_page.dart';
import 'package:humanity/pagetwo/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login_Page(),
    );
  }
}
