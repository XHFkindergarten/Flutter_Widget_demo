import 'package:flutter/material.dart';

class WaveCustomClipperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🌊型贝塞尔曲线'),
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
              height: 100.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-40);

    // 每一个二次贝塞尔曲线的控制点都需要一个控制点和一个结束点
    var firstControllPoint = Offset(size.width/4, size.height);
    var firstEndPoint = Offset(size.width/2.25, size.height-30);

    path.quadraticBezierTo(
      firstControllPoint.dx,
      firstControllPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy
    );
    
    /**
     * 所谓的波浪其实就是多次绘制二次贝塞尔曲线
     */

    var secondControllPoint = Offset(size.width*3/4, size.height-90);
    var secondEndPoint = Offset(size.width, size.height-40);

    path.quadraticBezierTo(
      secondControllPoint.dx,
      secondControllPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy
    );
    path.lineTo(size.width, size.height-40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}