import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  TabItem(this.active, this.icon);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
              width: 1,
            ),
          ),
        ),
        child: Icon(icon,
            size: 32, color: active == true ? Colors.black : Colors.grey[400]),
      ),
    );
  }
}
