import 'package:flutter/material.dart';
import 'package:five_project/home.dart';

class login extends StatelessWidget {
  const login(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        actions: [Icon(Icons.account_circle), Icon(Icons.search)],
        title: Text("login"),
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                  (route) => false);
            },
            icon: Icon(Icons.home)),
      ),
    );
  }
}
