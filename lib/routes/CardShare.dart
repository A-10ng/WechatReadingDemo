import 'package:flutter/cupertino.dart';

import 'BaseCard.dart';

class CardShare extends BaseCard {
  @override
  _CardShareState createState() {
    // TODO: implement createState
    return _CardShareState();
  }
}

class _CardShareState extends BaseCardState {
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享得联名卡');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle("分享给朋友最多可获得22天无限卡");
  }

  @override
  topTitle2() {
    // TODO: implement topTitle2
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        '/ 第19期',
        style: TextStyle(fontSize: 10),
      ),
    );
  }

  @override
  BottomContent() {
    // TODO: implement BottomContent
    return Expanded(
      child: Container(
        //通过BoxContraints尽可能撑满父容器
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color(0xfff6f7f9),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Image.network(
                  "http://longsh1z.top/resources/avatar.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text("288866人已参与该活动！"),
            )
          ],
        ),
      ),
    );
  }
}
