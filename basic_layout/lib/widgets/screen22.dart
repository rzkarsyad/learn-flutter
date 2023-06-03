import 'package:flutter/material.dart';
import 'dart:math';

class screen22 extends StatelessWidget {
  const screen22({
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: 225,
              height: 225,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.purple,
            ),
            Container(
              width: 175,
              height: 175,
              color: Colors.yellow,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
