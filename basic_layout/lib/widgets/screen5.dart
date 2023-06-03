import 'package:flutter/material.dart';
import 'dart:math';

class screen5 extends StatelessWidget {
  const screen5({
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
        child: Transform.rotate(
          angle: pi / (180 / 90),
          child: FlutterLogo(
            size: 240,
          ),
        ),
      ),
    );
  }
}
