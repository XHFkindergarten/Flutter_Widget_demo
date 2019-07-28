import 'package:flutter/material.dart';

class ToolTipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Tips Demo'),
      ),
      body: Center(
        child: Tooltip(
          child: Image.network('https://img.xhfkindergarten.cn/boxer-bird.png'),
          message: '拳击🐥',
        ),
      ),
    );
  }
}