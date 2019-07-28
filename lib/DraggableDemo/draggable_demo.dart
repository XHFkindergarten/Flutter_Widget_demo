import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  
  Color _draggableColor = Colors.grey;
  String _img_url = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖拽组件'),
      ),
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(88, 80),
            img_url: 'https://img.xhfkindergarten.cn/happy-bird.png',
          ),
          DraggableWidget(
            offset: Offset(188, 80),
            img_url: 'https://img.xhfkindergarten.cn/boxer-bird.png',
          ),
          Center(
            // 拖拽接收器
            child: DragTarget(
              // 接收钩子函数
              onAccept: (String url) {
                _img_url = url;
              },
              // 组件的构造器
              builder: (context, candidateData, rejectedData) {
                if (_img_url=='') {
                  // 没有图片的时候就是个灰色块
                  return Container(
                    width: 200,
                    height: 200,
                    color: _draggableColor,
                  );
                } else {
                  // 如果接收到了图片就变成小鸡
                  return Container(
                    width: 200,
                    height: 200,
                    child: Center(
                      child: Image.network(
                        _img_url,
                        fit: BoxFit.cover
                      ),
                    )
                  );
                }
                
              },
            ),
          )
        ],
      )
    );
  }
}
