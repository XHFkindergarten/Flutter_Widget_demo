import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文章'),),
      body: Center(child: Text('Article'),),
    );
  }
}