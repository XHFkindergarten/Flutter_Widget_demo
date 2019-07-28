import 'package:flutter/material.dart';

/**
 * 自定义可拖拽组件
 */
class DraggableWidget extends StatefulWidget {
  // 当需要接收参数的时候,在Widget中重写构造函数
  /**
   * @params
   * 初始位置
   * 图片地址
   */
  final Offset offset;
  final String img_url; // 图片地址
  const DraggableWidget({Key key, this.offset, this.img_url})
    :super(key:key);
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {

  Offset offset;
  
  @override
  void initState() {
    // 接收widget的参数offset
    offset=widget.offset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 利用接受的参数进行绝对定位
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        // 拖拽传递的数据
        data: widget.img_url,
        // 不动时的样子
        child: Container(
          width: 100.0,
          height: 100.0,
          child: Center(
            child: Image.network(
              widget.img_url
            ),
          ),
        ),
        // 拖动时的样子(这里使用了半透明)
        feedback: Opacity(
          opacity: 0.5,
          child: Container(
            width: 100.0,
            height: 100.0,
            child: Center(
              child: Image.network(
                widget.img_url
              ),
            ),
          ),
        ),
        // 取消(没有拖到接收区域就松手)处理函数
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          // 参数中的offset是松手处的位置,小鸡会停在我松手的位置
          // 当然也可以设置为初始化时传入的位置widget.offset
          setState(() {
            this.offset = widget.offset;
          });
        },
      ),
    );
  }
}