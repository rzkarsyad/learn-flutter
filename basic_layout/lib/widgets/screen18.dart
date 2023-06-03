import 'package:flutter/material.dart';
import 'dart:math';

class screen18 extends StatelessWidget {
  const screen18({
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
        body: GridView.builder(
          itemCount: 50,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }
          },
        ));
  }
}
