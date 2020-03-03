import 'package:administration/main.dart';
import 'package:administration/views/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController addr = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            children: <Widget>[
              TextField(
                controller: name,
                decoration: InputDecoration(hintText: "Name"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: addr,
                decoration: InputDecoration(hintText: "Address"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: place,
                decoration: InputDecoration(hintText: "Place"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: mobile,
                decoration: InputDecoration(hintText: "Mobile no."),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: "email"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: pincode,
                decoration: InputDecoration(hintText: "Pincode"),
              ),
              SizedBox(
                height: 10.0,
              ),
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
              TextField(
                obscureText: true,
                controller: cpass,
                decoration: InputDecoration(hintText: "confirm password"),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Sign up"),
                onPressed: () {
                  String getpass = pass.text;
                  String getcpass = cpass.text;
                  if (getpass == getcpass)
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  else
                    print("error");
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Back to login"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
