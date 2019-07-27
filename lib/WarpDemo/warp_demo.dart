import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {

  List<Widget> _list;

  @override
  void initState() {
    _list = List<Widget>()..add(addButton());
    super.initState();
  }

  Widget addButton() {
    return GestureDetector(
      onTap: () {
        if (_list.length<9) {
          setState(() {
            _list.insert(0, NewPhoto());
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.red,
          width: 60.0,
          height: 60.0,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget NewPhoto() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lightBlue,
        width: 60.0,
        height: 60.0,
        child: Center(child: Text('照片'),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('warp流式布局demo'),
      ),
      body: Center(
        child: Container(
          width: width,
          height: height/2,
          color: Colors.grey,
          child: Wrap(
            children: _list,
          ),
        ),
      ),
    );
  }
}