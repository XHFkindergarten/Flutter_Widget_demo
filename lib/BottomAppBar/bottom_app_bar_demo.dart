import 'package:flutter/material.dart';
// import '../pages/home_screen.dart';
// import '../pages/article_screen.dart';
// import '../pages/daily_screen.dart';
import 'each_view.dart';

/**
 * @description 一个不规则(中间有浮动添加按钮)的底部导航栏
 */
class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  // 默认按钮颜色 蓝色
  final _lightColor = Colors.blue;

  List<Widget> pageList = List();

  int _currentIndex = 0;

  @override
  void initState() {
    pageList
      ..add(EachView('home'))
      ..add(EachView('daily'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[this._currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return EachView('new Page');
              }
            )
          );
        },
        tooltip: 'XHFkindergarten',
        child: Icon(Icons.add,color: Colors.white,),
      ),
      // 设定插入的按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black54,
        shape: CircularNotchedRectangle(),  // 创建圆形缺口
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              color: _lightColor,
              icon: Icon(Icons.home),
              onPressed: (){
                setState(() {
                  this._currentIndex = 0;
                });
              },
            ),
            IconButton(
              color: _lightColor,
              icon: Icon(Icons.local_play),
              onPressed: (){
                setState(() {
                  this._currentIndex = 1;
                });
              },
            ),
          ],
        ),
      )
    );
  }
}