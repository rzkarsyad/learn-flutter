import 'package:flutter/material.dart';
import 'dart:math';

class screen7 extends StatelessWidget {
  const screen7({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: FlutterLogo(
          size: 20,
        ),
        title: Text(
          'Text Judul',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: false,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: Center(
          // bisa dibungkus dengan clipOval
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
          color: Color.fromARGB(255, 13, 87, 148),
        ),
        height: 200,
        width: 200,
        child: Center(
          child: Text(
            'Hello',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
      )),
    );
  }
}
