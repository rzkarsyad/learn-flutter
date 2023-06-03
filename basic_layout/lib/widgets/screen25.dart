import 'package:flutter/material.dart';
import 'dart:math';

class screen25 extends StatelessWidget {
  const screen25({
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 16, left: 32, right: 32),
            margin: EdgeInsets.only(bottom: 16),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Container(
                    color: Color.fromARGB(255, 18, 76, 124),
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(right: 20),
                  );
                } else {
                  return Container(
                    color: Colors.amber,
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(right: 20),
                  );
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
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
          ),
        ],
      ),
    );
  }
}
