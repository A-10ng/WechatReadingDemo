import 'package:flutter/material.dart';
import 'package:wechat_reading_flutter/routes/ContentPager.dart';
import 'package:wechat_reading_flutter/views/CustomAppbar.dart';

//底部导航栏框架
class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPagerController contentPagerController = new ContentPagerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffedeef0),
              Color(0xffe6e7e9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ContentPager(
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          contentPagerController: contentPagerController,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          _bottomItem("本周", Icons.folder, 0),
          _bottomItem("分享", Icons.explore, 1),
          _bottomItem("免费", Icons.free_breakfast, 2),
          _bottomItem("长安", Icons.location_city, 3),
        ],
        onTap: (index) {
          //控制内容区域滚动到指定位置
          contentPagerController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  //封装底部Tab
  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _defaultColor,
      ),
      activeIcon: Icon(
        icon,
        color: _activeColor,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: _currentIndex == index ? _activeColor : _defaultColor),
      ),
    );
  }
}
