import 'package:administration/views/sign_up.dart';
import 'package:administration/views/welcome.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: user,
                decoration: InputDecoration(hintText: "username"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                controller: pass,
                decoration: InputDecoration(hintText: "password"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: () {
                  String getuser = user.text;
                  String getpass = pass.text;
                  if ((getuser == "admin") && (getpass == "12345"))
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Window()));
                  else
                    print("error");
                },
              ),
              SizedBox(height: 10.0),
              RaisedButton(
                child: Text("SIGN UP"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
              )
            ],
          ),
    );
  }
}
