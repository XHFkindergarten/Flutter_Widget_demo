#### 1. 底部导航栏

home: ```BottomNavigationWidget()```
> @description
传统的底部导航栏
导航跳转路由会有高亮显示(IOS会放大一点点,Android会放大+出现文字)

<img src="https://img.xhfkindergarten.cn/WechatIMG28.png" style="width:100px;" />

#### 2. 底部导航栏中间嵌入圆形(+)按钮
home: ```BottomAppBarDemo()```
> @description 适用于频繁使用+按钮的情况

![图片2](https://img.xhfkindergarten.cn/WechatIMG27.png)

#### 3. 页面跳转动画
home: ```FirstPage()```
> @description
(1)淡入淡出
(2)放缩效果
(3)放缩+旋转
(4)左侧滑入滑出

![图片3](https://img.xhfkindergarten.cn/WechatIMG30.png)

#### 4. 毛玻璃特效
home: ```FrostedGlassDemo()```
> @description
使用ImageFilter组件对图片进行过滤
形成毛玻璃特效
并且在上方悬浮文字

![图片4](https://img.xhfkindergarten.cn/WechatIMG31.png)

#### 5. 保持页面状态
home: ```KeepAliveDemo()```
> @description
当不同页面跳转的时候保存之前页面的数据

![图片4](https://img.xhfkindergarten.cn/WechatIMG32.png)
![图片4](https://img.xhfkindergarten.cn/WechatIMG33.png)

#### 6. 不简单的搜索栏
home: ```SearchBarDemo()```
> @description
包含默认提示
待选提示列表
选择提示文字进行显示
返回&取消

![图片5](https://img.xhfkindergarten.cn/WechatIMG34.png)
![图片5](https://img.xhfkindergarten.cn/WechatIMG35.png)

#### 7.Warp流式布局
home: ```WarpDemo()```
> @description
点击添加按钮添加照片组件
照片按照流式布局排列（超出范围自动换行）

![图片6](https://img.xhfkindergarten.cn/WechatIMG36.png)

#### 8. 展开折叠栏
home: ```ExpansionTileDemo()```
> @description
点击可以展开或者折叠标题栏

> @params
title:闭合时显示的标题，这个部分经常使用Text Widget。
leading:标题左侧图标，多是用来修饰，让界面显得美观。
backgroundColor: 展开时的背景颜色，当然也是有过度动画的，效果非常好。
children: 子元素，是一个数组，可以放入多个元素。
trailing ： 右侧的箭头，你可以自行替换但是我觉的很少替换，因为谷歌已经表现的很完美了。
initiallyExpanded: 初始状态是否展开，为true时，是展开，默认为false，是不展开

![图片7](https://img.xhfkindergarten.cn/WechatIMG37.png)
![图片7](https://img.xhfkindergarten.cn/WechatIMG38.png)

#### 9. 展开折叠列表
home: ```ExpansionPanelListDemo()```
> @description
没什么就是列表

![图片8](https://img.xhfkindergarten.cn/WechatIMG39.png)

#### 10. 二次贝塞尔曲线
home: ```CustomClipperDemo()```
> @description
只插入一个控制点，从而绘制椭圆形的曲线

![图片10](https://img.xhfkindergarten.cn/WechatIMG40.png)

#### 11. 波浪型贝塞尔曲线
home: ```WaveCustomClipperDemo()```
> @description
插入多个控制点和结束点，从而形成波浪型

![图片11](https://img.xhfkindergarten.cn/WechatIMG41.png)

#### 12. 闪屏动画
home: ```SplashScreenDemo()```
> @description
打开App时会先播放全屏动画之后进入首页

![图片12](https://img.xhfkindergarten.cn/WechatIMG42.png)

#### 13. 右滑返回上一页面
home: ```RightBackDemo()```
> @description
主要是为Android设备提供右滑返回
需要使用Cupertino包

#### 14. 轻量级提示
home: ```ToolTipsDemo()```
> @description
手指点击目标物的时候会有小方框文字提示

![图片14](https://img.xhfkindergarten.cn/WechatIMG43.png)

#### 15. 拖拽组件
home: ```DraggableDemo()```
> @description
将小鸟拖动到屏幕中间,屏幕中间的区域就会出现这只小鸟
如果松手，小鸟回到原来的位置或者落在松手的位置

![图片15](https://img.xhfkindergarten.cn/WechatIMG44.png)
