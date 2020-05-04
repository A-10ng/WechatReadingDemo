//长安十二时辰
import 'package:flutter/material.dart';
import 'package:wechat_reading_flutter/routes/BaseCard.dart';

class CardSpecial extends BaseCard {
  @override
  _CardSpecialState createState() {
    // TODO: implement createState
    return _CardSpecialState();
  }
}

class _CardSpecialState extends BaseCardState {
  @override
  TopContent() {
    // TODO: implement TopContent
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 66,
            right: 66,
            top: 36,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: Color(0xfffffcf7),
          ),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Image.network("http://longsh1z.top/resources/avatar.jpg"),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 15, 15, 20),
          decoration: BoxDecoration(color: Color(0xfff7f3ea)),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "长安十二时辰...",
                    style: TextStyle(color: Color(0xff473b25)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "马伯庸",
                      style: TextStyle(fontSize: 13, color: Color(0xff7d725c)),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffd9bc82),
                            Color(0xffecd9ae),
                          ],
                        )),
                    child: Text(
                      '分享免费领',
                      style: TextStyle(color: Color(0xff4f3b1a), fontSize: 13),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  BottomContent() {
    // TODO: implement BottomContent
    return Expanded(
      child: Column(
        //撑满宽度
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //垂直方向上均匀分布
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.format_quote),
                Text("揭露历史真相"),
              ],
            ),
          ),
          Text(
            "更多免费好书看不停>>>",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
