import 'package:flutter/material.dart';

class CustomClipperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('贝塞尔曲线'),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0, // 消除顶栏和body之间的分隔线程度（此处需要融合）
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            // clipper定义了裁切路径，需要返回一个Path
            clipper: BottomClipper(),
            // child为被裁切的对象
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
// 此处为二次的贝塞尔曲线
class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 新建Path对象
    var path = Path();
    // 左上角点
    path.lineTo(0, 0);
    // 左下角点
    path.lineTo(0, size.height-50);
    // 第一个（唯一一个）控制点
    var firstControlPoint = Offset(size.width/2, size.height);
    // 第一个控制曲线的结束点
    var firstEndPoint = Offset(size.width, size.height-50);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy
    );
    // 右下角点
    path.lineTo(size.width, size.height-50);
    // 右上角点
    path.lineTo(size.width, 0);
    return path;
  }

  // 不知道为什么，反正要return false 这么一下
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}