import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  
  List<int> mList;
  List<ExpansionStateBean> expandStateList;

  // 初始化(以下两种初始化方法都可以)
  // _ExpansionPanelListDemoState() {
  //   mList = List();
  //   expandStateList = List();
  //   for(int i=0;i<10;i++) {
  //     mList.add(i);
  //     expandStateList.add(ExpansionStateBean(i, false));
  //   }
  // }

  @override
  void initState() {
    mList = List();
    expandStateList = List();
    for(int i=0;i<10;i++) {
      mList.add(i);
      expandStateList.add(ExpansionStateBean(i, false));
    }
    super.initState();
  }

  // 点击展开/收拢 处理函数
  _setExpansionState(int index, isExpanded) {
    setState(() {
      expandStateList[index].isOpen = !expandStateList[index].isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('折叠列表'),
      ),
      // SingleChildScrollView 单子元素无限滚动组件。
      // 如果去掉这个warp，内容物超过屏幕高度渲染时是会报错的
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // 交互回调函数，该值是一个匿名函数.调用我们写好的处理函数
          expansionCallback: (index, bol) => _setExpansionState(index, bol),
          children: mList.map((index) {
            return ExpansionPanel(
              canTapOnHeader: true, // 点击Panel主体时也会触发收放事件，否则只能点击右侧图标
              // headerBuilder为标题,body为展开内容
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('Expansion Tile $index'),
                  leading: Icon(Icons.arrow_downward),
                );
              },
              body: ListTile(
                title: Text('description of #$index')
              ),
              // isExpanded 默认展开状态
              isExpanded: expandStateList[index].isOpen
            );
          }).toList()
        ),
      ),
    );
  }
}

class ExpansionStateBean {
  var isOpen;
  int index;

  ExpansionStateBean(this.index, this.isOpen);
}