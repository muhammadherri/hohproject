import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  @override
  _Login_PageState createState() => _Login_PageState();
}

// ignore: camel_case_types
class _Login_PageState extends State<Login_Page> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  // ignore: missing_return
  Future<List> _login() async {
    final response =
        await http.post("http://10.0.2.2/humanproject/login.php", body: {
      "username": user.text,
      "password": pass.text,
    });
    print(response.body);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
