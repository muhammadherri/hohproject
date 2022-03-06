import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:humanity/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:humanity/menu/adminpage.dart';

import 'menu/memberpage.dart';
import 'menu/sellerpage.dart';

void main() {
  runApp(MyApp());
}

String username = '';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login_Page(),
      routes: <String, WidgetBuilder>{
        '/AdminPage': (BuildContext context) => new AdminPage(
              username: username,
            ),
        '/MemberPage': (BuildContext context) => new MemberPage(),
        '/SellerPage': (BuildContext context) => new SellerPage(),
      },
    );
  }
}

class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

// ignore: camel_case_types
class _Login_PageState extends State<Login_Page> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = "";
  // ignore: missing_return
  Future<List> _login() async {
    final response =
        await http.post("http://192.168.1.14:8080/humanproject/login.php", body: {
      "username": user.text,
      "password": pass.text,
    });
    print(response.body);
    var dataset = json.decode(response.body);
    if (dataset.length == 0) {
      setState(() {
        msg = "Login Failed";
      });
    } else {
      if (dataset[0]['level'] == 'admin') {
        print("Welcome admin");
        Navigator.pushReplacementNamed(context, '/AdminPage');
      } else if (dataset[0]['level'] == 'member') {
        print("Welcome member");
        Navigator.pushReplacementNamed(context, '/MemberPage');
      } else if (dataset[0]['level'] == 'seller') {
        print("Welcome seller");
        Navigator.pushReplacementNamed(context, '/SellerPage');
      }
      setState(() {
        username = dataset[0]['username'];
      });
    }
    return dataset;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Username",
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: user,
                decoration: InputDecoration(hintText: 'Username'),
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  _login();
                },
                child: Text("Login"),
              ),
              Text(
                msg,
                style: TextStyle(fontSize: 20, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
