import 'package:flutter/material.dart';

class StoryNewItem extends StatelessWidget {
  const StoryNewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                ),
              ),
              Container(
                height: 76,
                width: 76,
                child: Icon(
                  Icons.add,
                  size: 32,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text('New'),
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  StoryItem(this.title, this.url_photo);

  final String title, url_photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                ),
              ),
              Container(
                height: 76,
                width: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(url_photo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(title),
        ],
      ),
    );
  }
}
