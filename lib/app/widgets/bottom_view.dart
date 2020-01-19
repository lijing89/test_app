import 'package:flutter/material.dart';

import 'package:oktoast/oktoast.dart';

import 'package:flutter_test_app/app/utils/application.dart';

class BottomView extends StatelessWidget {
    final EdgeInsets padding;
    final ScrollController scrollController;
    final double width;
    BottomView({
        this.padding=const EdgeInsets.all(10.0),
        this.scrollController,
        @required this.width,
    });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        padding: padding,
        decoration: BoxDecoration(
            color: Colors.green,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AssetUtil.image('bg_bottom.jpg')),fit: BoxFit.fill,alignment: Alignment.topCenter),
                    ),
                    child: Column(
                        children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(
                                    top: 20.0,
                                    bottom: 60.0,
                                    left: 20.0,
                                    right: 20.0
                                ),
                                height: 200,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                        Text(
                                            '网奇 - 专注于为每一个客户打造自己的 APP 艺术品',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.white,
                                            ),
                                        ),
                                        Text(
                                            'Copyright © 秦皇岛网奇网络科技有限公司 冀ICP备11009660号-1',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.white,
                                            ),
                                        ),
                                        Text(
                                            'APP 运营学院公众号：wangqi0335',
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.white,
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            Container(
                                height: 80.0,
                                child: Row(
                                    children: <Widget>[
                                        Expanded(
                                            child: GestureDetector(
                                                onTap: (){
                                                    showToast('电话咨询balabalabala');
                                                },
                                                child: Container(
                                                    height: double.infinity,
                                                    margin:EdgeInsets.only(top: 26.0),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                            Container(
                                                                height: 30,
                                                                padding: EdgeInsets.only(right: 10.0),
                                                                child: Image.asset(AssetUtil.image('mobile_foot_i1.png'),fit: BoxFit.fitHeight,),
                                                            ),
                                                            Text('电话咨询')
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                                        GestureDetector(
                                            onTap: (){
                                                scrollController?.animateTo(0.0, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
                                            },
                                            child: Container(
                                                child: Image.asset(AssetUtil.image('mobile_foot.png'),fit: BoxFit.fitHeight,),
                                            ),
                                        ),
                                        Expanded(
                                            child: GestureDetector(
                                                onTap: (){
                                                    showToast('在线客服balabalabala');
                                                },
                                                child: Container(
                                                    height: double.infinity,
                                                    margin:EdgeInsets.only(top: 26.0),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                    ),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: <Widget>[
                                                            Container(
                                                                height: 30,
                                                                padding: EdgeInsets.only(right: 10.0),
                                                                child: Image.asset(AssetUtil.image('mobile_foot_i2.png'),fit: BoxFit.fitHeight,),
                                                            ),
                                                            Text('在线客服')
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ],
        ),
    );
  }
}
