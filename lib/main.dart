import 'package:flutter/material.dart';
import 'BottomNavigation/bottom_navigation_widget.dart';
import 'BottomAppBar/bottom_app_bar_demo.dart';
import 'FrostedGlassDemo/frosted_glass_demo.dart';
import 'RouteFlash/page.dart';

void main() => runApp(MyApp());

/// 在MaterialApp > home值 放入不同的Widget来体验Flutter实例

/**
 * 1.底部导航栏
 * home: BottomNavigationWidget()
 * @description
 * 传统的底部导航栏
 * 导航跳转路由会有高亮显示(IOS会放大一点点,Android会放大+出现文字)
 */

/**
 * 2.底部导航栏中间嵌入圆形(+)按钮
 * home: BottomAppBarDemo()
 * @description 适用于频繁使用+按钮的情况
 */

/**
 * 3.页面跳转动画
 * home: FirstPage()
 * @description
 *  (1)淡入淡出
 *  (2)放缩效果
 *  (3)放缩+旋转
 *  (4)左侧滑入滑出
 */

/**
 * 4.毛玻璃特效
 * home: FrostedGlassDemo()
 * @description
 * 使用ImageFilter组件对图片进行过滤
 * 形成毛玻璃特效
 * 并且在上方悬浮文字
 */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demos',
      theme: ThemeData.dark(),
      home: BottomAppBarDemo(),
    );
  }
}