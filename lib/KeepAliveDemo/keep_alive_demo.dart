import 'package:flutter/material.dart';
import 'add_num_page.dart';

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

/**
 * with关键字是混入类中的方法
 * 用来避免多重继承所带来的混乱
 * SingleTickerProviderStateMixin的作用是后面要用到垂直的选项
 */
class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  /**
   * 重写销毁方法是为了保存页面的状态
   * 而不是完全销毁
   */
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alive App Bar'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.bookmark_border)),
            Tab(icon: Icon(Icons.local_play)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          AddNumPage(),
          AddNumPage(),
          AddNumPage(),
        ],
      ),
    );
  }
}