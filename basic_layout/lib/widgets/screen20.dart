import 'package:flutter/material.dart';
import 'dart:math';

class screen20 extends StatelessWidget {
  const screen20({
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
        padding: const EdgeInsets.all(12.0),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://picsum.photos/id/${240 + index}/200/300'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Hello ${index + 1}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
