import 'package:flutter/material.dart';
import 'package:wechat_reading_flutter/routes/CardFree.dart';
import 'package:wechat_reading_flutter/routes/CardRecommend.dart';
import 'package:wechat_reading_flutter/routes/CardShare.dart';
import 'package:wechat_reading_flutter/routes/CardSpecial.dart';
import 'package:wechat_reading_flutter/views/CustomAppbar.dart';
import 'package:wechat_reading_flutter/views/StatusBar.dart';

class ContentPager extends StatefulWidget {
  //ValueChanged<int>,其中的int是返回的参数，
  //该变量的主要目的是pageview里面的内容改变时进行回调
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;

  //构造方法，可选参数
  const ContentPager({
    Key key,
    this.onPageChanged,
    this.contentPagerController,
  }) : super(key: key);

  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(
      //视窗比例
      viewportFraction: 0.8);
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.greenAccent,
  ];

  @override
  void initState() {
    // TODO: implement initState
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }

    //设置沉浸式状态栏
    StatusBar.setTransparentStatusBar();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppbar(),
        Expanded(
          child: PageView(
            onPageChanged: widget.onPageChanged,
            controller: _pageController,
            children: <Widget>[
              _wrapItem(CardRecommend()),
              _wrapItem(CardShare()),
              _wrapItem(CardFree()),
              _wrapItem(CardSpecial()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }
}

//内容区域的控制器，主要目的是点击底部tab时pageView里面的内容也跟着变化
class ContentPagerController {
  PageController _pageController;

  void jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }
}
