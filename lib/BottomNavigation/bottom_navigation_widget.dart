import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/article_screen.dart';
import 'pages/daily_screen.dart';

/**
 * @description 规则的底部导航栏
 */
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  int _currentIndex = 0;

  List<Widget> pageList = List();

  @override
  void initState() {
    pageList
      ..add(HomeScreen())
      ..add(ArticleScreen())
      ..add(DailyScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.lightBlue,
            ),
            title: Text('Main',style: TextStyle(color: Colors.lightBlue),),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
              color: Colors.lightBlue,
            ),
            title: Text('Articles',style: TextStyle(color: Colors.lightBlue),),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_play,
              color: Colors.lightBlue,
            ),
            title: Text('Daily',style: TextStyle(color: Colors.lightBlue),),
          ),
        ],
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
      ),
    );
  }
}