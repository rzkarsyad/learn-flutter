import 'package:flutter/material.dart';
import 'dart:math';

class screen19 extends StatelessWidget {
  const screen19({
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
      body: ListView.builder(
        padding: const EdgeInsets.all(24.0),
        itemCount: 50,
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.amber,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hello ${index + 1}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hello ${index + 1}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
