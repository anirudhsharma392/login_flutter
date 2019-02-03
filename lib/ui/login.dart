import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Loginstate();
  }
}

class Loginstate extends State<Login> {
  String username;
  String password;
  String display = '';
  final TextEditingController _username = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  void _clear() {
    setState(() {
      _username.clear();
      _password.clear();
    });
  }

  void _login() {
    setState(() {
      if (_username.text.isEmpty && _password.text.isEmpty) {
        display = "Please, fill up the Above Fields first";
      } else {
        username = _username.text;
        password = _password.text;
        display = "Hello ,$username";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        alignment: Alignment.topCenter,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "images/face.png",
              width: 90.0,
              height: 90.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 70.0, left: 30.0, right: 40.0),
              height: 120.0,
              width: 360.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _username,
                    decoration: InputDecoration(
                        hintText: "Username", icon: new Icon(Icons.person)),
                  ),
                  TextField(
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: "Password", icon: new Icon(Icons.lock)),
                    obscureText: true,
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 70.0),
                      child: RaisedButton(
                        onPressed: _login,
                        color: Colors.redAccent,
                        child: Text(
                          'login',
                          style: TextStyle(color: Colors.white, fontSize: 16.9),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 100.0),
                      child: RaisedButton(
                        onPressed: _clear,
                        color: Colors.redAccent,
                        child: Text(
                          'Clear',
                          style: TextStyle(color: Colors.white, fontSize: 16.9),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70.0),
              child: Column(
                children: <Widget>[
                  Text("$display",
                      style: TextStyle(fontSize: 20.0, color: Colors.pink))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
