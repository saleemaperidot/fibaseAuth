import 'package:firebaseproject/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  Register({super.key, required this.tv});

  final Function tv;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthSerrvices authSerrvices = AuthSerrvices();

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("Register to drink cofee"),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                widget.tv();
              },
              child: Text("sign In"))
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
              child: Text("register"),
            )
          ],
        )),
      ),
    );
  }
}
