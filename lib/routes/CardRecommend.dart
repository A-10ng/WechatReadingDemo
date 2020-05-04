import 'package:flutter/material.dart';
import 'package:wechat_reading_flutter/routes/BaseCard.dart';

////本周推荐
class CardRecommend extends BaseCard {
  @override
  _CardRecommendState createState() {
    // TODO: implement createState
    return _CardRecommendState();
  }
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    // TODO: implement initState
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('送你一天无限卡，全场书籍免费送！');
  }

  @override
  BottomContent() {
    // TODO: implement BottomContent
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Image.network(
          "http://longsh1z.top/resources/avatar.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
