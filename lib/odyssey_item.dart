import 'package:flutter/material.dart';

class OdysseyItem extends StatelessWidget {
  const OdysseyItem({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        color: color,
        child: Container(
          padding: EdgeInsets.all(8),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
