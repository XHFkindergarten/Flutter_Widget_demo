import 'dart:ui' as prefix0;
import 'dart:ui';
// import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox( // 约束盒子组件(usage:添加额外约束条件到child上)
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://img.xhfkindergarten.cn/wallpaper5'),
          ),
          Center(
            child: ClipRect(  // 可切割容器(这层嵌套可以去除)
              child: BackdropFilter(  // 背景过滤器组件
                filter: ImageFilter.blur(sigmaX: 6.0,sigmaY: 6.0),  // 核心组件ImageFilter
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200), // 盒子修饰器
                    // child: Center(
                    //   child: Text(
                    //     'XHFkindergarten',
                    //     style: Theme.of(context).textTheme.display1,
                    //   ),
                    // ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'XHFkindergarten',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      ),
    );
  }
}