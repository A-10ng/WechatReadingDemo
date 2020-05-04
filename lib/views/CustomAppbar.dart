import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取上边距的值，主要是用于适配刘海屏顶部安全区域
    double paddingTop = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.fromLTRB(20, paddingTop + 10, 20, 5),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
          ),
          Expanded(
            child: Text(
              "长安十二时辰",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 13),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          Text("书城"),
        ],
      ),
    );
  }
}
