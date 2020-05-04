//免费听书馆
import 'package:flutter/material.dart';
import 'package:wechat_reading_flutter/routes/BaseCard.dart';

class CardFree extends BaseCard {
  @override
  _CardFreeState createState() {
    // TODO: implement createState
    return _CardFreeState();
  }
}

const BOOK_LIST = [
  {'title': '暴力沟通', 'cover': 'logo.png', 'price': '19.6'},
  {'title': '论中国', 'cover': 'logo.png', 'price': '12.3'},
  {'title': '饥饿得盛世', 'cover': 'logo.png', 'price': '6.1'},
  {'title': '焚天之怒第4卷饥饿得盛世', 'cover': 'logo.png', 'price': '14.0'},
  {'title': '大结局焚天之怒第4卷', 'cover': 'logo.png', 'price': '3.7'},
  {'title': '乾隆时代', 'cover': 'logo.png', 'price': '9.9'},
];

class _CardFreeState extends BaseCardState {
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('免费听书馆');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('第 108 期');
  }

  @override
  BottomContent() {
    // TODO: implement BottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            //撑开高度
            Expanded(
              child: _bookList(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
      crossAxisCount: 3,
      //垂直间距
      mainAxisSpacing: 0,
      //水平间距
      crossAxisSpacing: 15,
      //长宽比
      childAspectRatio: 0.46,
      padding: EdgeInsets.only(left: 20,right: 20),
      children: BOOK_LIST.map((item) {
        return _item(item);
      }).toList(),
    );
  }

  _bottomButton() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          onPressed: () {},
          padding: EdgeInsets.only(top: 13, bottom: 15),
          color: Colors.blue,
          child: Text(
            "免费领取",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _item(Map<String, String> item) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.asset(
                "assets/images/${item['cover']}",
                fit: BoxFit.cover,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black38,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: Text(
                    "原价${item['price']}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              item['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
