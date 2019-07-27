import 'package:flutter/material.dart';

class AddNumPage extends StatefulWidget {
  @override
  _AddNumPageState createState() => _AddNumPageState();
}

/**
 * 必须混入AutomaticKeepAliveClientMixin类,这个组件才可能keep alive
 */
class _AddNumPageState extends State<AddNumPage> with AutomaticKeepAliveClientMixin {
  
  int _num = 0;

  // 必须要重写get wantKeepAlive返回true
  @override
  bool get wantKeepAlive => true;

  void _incrementNum() {
    setState(() => _num++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
        body: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('点击按钮使数字+1'),
              Text(
                '$_num',
                style: Theme.of(context).textTheme.display3,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _incrementNum,
        ),
      // ),
    );
  }
}