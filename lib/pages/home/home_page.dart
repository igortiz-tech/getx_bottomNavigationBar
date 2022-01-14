import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "HomePage Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}