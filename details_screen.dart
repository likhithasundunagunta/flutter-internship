import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map movie;

  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie['name'])),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(movie['image']?['original'] ?? ''),
            SizedBox(height: 16),
            Text(movie['name'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(movie['summary'] ?? '', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
