import 'package:flutter/material.dart';

//卡片基类
class BaseCard extends StatefulWidget {
  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    //裁切圆角
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias, //抗锯齿
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            TopContent(),
            BottomContent(),
          ],
        ),
      ),
    );
  }

  TopContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        top: 26,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              topTitle(''),
              topTitle2(),
            ],
          ),
          subTitle(''),
        ],
      ),
    );
  }

  BottomContent() {
    return Container();
  }

  subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(
          color: subTitleColor,
          fontSize: 11,
        ),
      ),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }

  topTitle2() {
    return Container();
  }
}
