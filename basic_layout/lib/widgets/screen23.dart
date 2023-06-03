import 'package:flutter/material.dart';
import 'dart:math';

class screen23 extends StatelessWidget {
  const screen23({
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
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(250 / 2),
              border: Border.all(
                color: Color.fromARGB(255, 9, 50, 112),
                width: 12,
              ),
              color: Colors.grey[300],
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/id/238/200/300'),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
