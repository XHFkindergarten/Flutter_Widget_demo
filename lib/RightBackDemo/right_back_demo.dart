import 'package:flutter/cupertino.dart';
/**
 * 此处使用的是cupertino包，其中也有很多替代Material包的控件
 * CupertinoPageRoute是自带右滑返回上一级的
 * 对于IOS而言是全部可以返回上一级
 */
class RightBackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.lightBackgroundGray,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context) {
                  return RightBackDemo();
                })
              );
            },
          ),
        )
      ),
    );
  }
}