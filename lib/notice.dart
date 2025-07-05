import 'package:flutter/material.dart';

class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice"),
      ),
      body: Container(
        child: Center(
          child: Text("NO Notice to show",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}