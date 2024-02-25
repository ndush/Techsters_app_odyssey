import 'package:flutter/material.dart';
import 'odyssey_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showExpandedItems = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Dev Odyssey',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  OdysseyItem(
                    title: 'Introduction to Mobile Development',
                    color: Colors.teal,
                  ),
                  OdysseyItem(
                    title: 'Kotlin',
                    color: Colors.orange,
                  ),
                  OdysseyItem(
                    title: 'Advanced Kotlin',
                    color: Colors.purple,
                  ),
                  OdysseyItem(
                    title: 'Introduction to Dart and Flutter',
                    color: Colors.indigo,
                  ),
                  if (showExpandedItems)
                    OdysseyItem(
                      title: 'Advanced Flutter',
                      color: Colors.deepOrange,
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    showExpandedItems = !showExpandedItems;
                  });
                },
                child: Text(
                  showExpandedItems ? 'See Less' : 'See More',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
