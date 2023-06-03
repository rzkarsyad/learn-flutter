import 'package:flutter/material.dart';
import 'dart:math';

class screen24 extends StatelessWidget {
  const screen24({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 270,
                    height: 270,
                    color: Color.fromARGB(255, 9, 50, 112),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/id/238/200/300'),
                        fit: BoxFit.cover,
                      )),
                ),
              ],
            ),
            SizedBox(height: 48),
            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
