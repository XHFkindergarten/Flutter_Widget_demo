import 'package:flutter/material.dart';
import 'package:widget_demos/WaveCustomClipper/wave_custom_clipper.dart';

class SplashScreenDemo extends StatefulWidget {
  @override
  _SplashScreenDemoState createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> with SingleTickerProviderStateMixin {

  // 声明动画控制器和动画
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,  // 开启垂直同步
      duration: Duration(milliseconds: 3000)
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener(
      // 监听器 匿名方法
      (status) {
        if (status == AnimationStatus.completed) {
          // pushAndRemoveUntil 跳转下一页并且结束这个动画，否则会占用内存
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => WaveCustomClipperDemo()),
            (route) => route==null  
          );
        }
      }
    );
    _controller.forward();  // 已进入页面就播放动画
    super.initState();
  }
  /**
   * 重写销毁函数
   */
  @override
  void dispose() {
    // 动画的控制器也要删除掉
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://img.xhfkindergarten.cn/wallpaper3',
        // scale: 2.0,
        fit: BoxFit.cover
      ),

    );
  }
}