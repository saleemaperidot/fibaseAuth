import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseproject/screens/authenticate/authenticate.dart';
import 'package:firebaseproject/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key, required this.tv});
  final Function tv;
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthSerrvices authSerrvices = AuthSerrvices();

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("Sign in"),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: [
          TextButton(
              onPressed: (() {
                widget.tv();
              }),
              child: Text("register"))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.brown[600]),
              onPressed: () async {
                print(email);
                print(password);
              },
              child: Text("Sign in"),
            )
          ],
        )),
      ),
    );
  }
}
