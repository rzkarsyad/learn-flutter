import 'package:flutter/material.dart';
import 'dart:math';

class screen17 extends StatelessWidget {
  const screen17({
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 13, 87, 148),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 255, 212, 19),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 13, 87, 148),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 255, 212, 19),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 13, 87, 148),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 255, 212, 19),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 13, 87, 148),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              // margin: EdgeInsets.only(right: 16),
              color: Color.fromARGB(255, 255, 212, 19),
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
