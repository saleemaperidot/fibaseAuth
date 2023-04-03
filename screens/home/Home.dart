import 'package:firebaseproject/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthSerrvices _auth = AuthSerrvices();
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text("crew"),
        backgroundColor: Colors.brown[400],
        actions: [
          IconButton(
              onPressed: () async {
                print("sign out");
                final out = _auth.signout();
                print(out);
                await _auth.signout();
              },
              tooltip: "logout",
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(child: Text("data")),
    );
  }
}
