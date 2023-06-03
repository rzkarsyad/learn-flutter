import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chats(),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'Edit',
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 12),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Chats',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    autocorrect: false,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list_outlined,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: Text('Broadcast Lists')),
                TextButton(onPressed: () {}, child: Text('New Group'))
              ],
            ),
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              ChatItem(true, 'https://i.pravatar.cc/300', 'Samuel',
                  'consectetur adipiscing elit.', '10:00 AM', 2),
              ChatItem(true, 'https://i.pravatar.cc/249', 'Magnus Harmon',
                  'Aenean feugiat lectus non ex laoreet,', '10:00 AM', 2),
              ChatItem(true, 'https://i.pravatar.cc/801', 'Magnus Harmon',
                  'Aenean feugiat lectus non ex laoreet,', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/129', 'Vera Daugherty',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/342', 'Caroline Houston',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/893', 'Anish Norman',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/128', 'Vera Daugherty',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/842', 'Caroline Houston',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/100', 'Anish Norman',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/734', 'Vera Daugherty',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/631', 'Caroline Houston',
                  'Halo', '10:00 AM', 2),
              ChatItem(false, 'https://i.pravatar.cc/948', 'Anish Norman',
                  'Halo', '10:00 AM', 2),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  ChatItem(
    this.read,
    this.avatar,
    this.name,
    this.message,
    this.time,
    this.count,
  );

  final bool read;
  final String avatar, name, message, time;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(28),
              image: DecorationImage(
                  image: NetworkImage(avatar), fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  color: read == true ? Colors.blue : Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Visibility(
                visible: read == true ? true : false,
                child: Container(
                  alignment: Alignment.center,
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: read == true ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '$count',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
