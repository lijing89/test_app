import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_app_bar.dart';
import 'package:flutter_test_app/app/widgets/bottom_view.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
    /*
    * 关于我们</em><span>ABOUT</span></a></li>
                <li class="n_fuwu"><a href="service.html"><em>五赞服务</em><span>SERVICE</span></a></li>
                <li class="n_case"><a href="case.html"><em>案例欣赏</em><span>CASE</span></a></li>
                <li class="n_coll"><a href="http://app.wangqi.com"><em>APP学院</em><span>COLLEGE</span></a> </li>
                <li class="n_contact"><a href="contact.html"><em>联系我们
    * */
    List _items = [
        {
            'title':'关于我们',
            'router':Routes.about,
        },
        {
            'title':'五赞服务',
            'router':Routes.service,
        },
        {
            'title':'案例欣赏',
            'router':Routes.example,
        },
        {
            'title':'APP学院',
            'router':Routes.school,
        },
        {
            'title':'联系我们',
            'router':Routes.contact,
        },
    ];


    CustomAppbarController _appbarController = CustomAppbarController();

    double appbarH = 60.0;

    ScrollController _scrollController = ScrollController();

    itemOnTap({int index}){
        print('点击了index = $index');
        //先不跳 还没写完
        Application.router.navigateTo(context, _items[index]['router'],clearStack: true,transition: TransitionType.fadeIn);
    }

    @override
    Widget build(BuildContext context) {

        //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334),设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
        //默认设计稿为6p7p8p尺寸 width : 1080px , height:1920px , allowFontScaling:false
        ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true)..init(context);

        return Scaffold(
            body: Container(
                height: double.infinity,
                width: double.infinity,
                child:  Stack(
                    children: <Widget>[
                        Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(1334),
                            child: ListView(
                                controller: _scrollController,
                                padding: EdgeInsets.only(
                                    top: appbarH + MediaQuery.of(context).padding.top,
                                ),
                                children: <Widget>[
                                    contentView(context: context),
                                    BottomView(
                                        width: double.infinity,
                                        padding: EdgeInsets.only(
                                            bottom: ScreenUtil.bottomBarHeight/ScreenUtil.pixelRatio
                                        ),
                                        scrollController: _scrollController,
                                    ),
                                ],
                            ),
                        ),
                        CustomAppbar(
                            initIndex: 2,
                            appbarController: _appbarController,
                            controller: _scrollController,
                            width: ScreenUtil().setWidth(750),
                            height: appbarH,
                            itemOnTap: itemOnTap,
                            data: _items,
                            bgColor: AppStyle.colorHeaderBg,
                            fieldName: 'title',
                            lineHeight: ScreenUtil().setWidth(5.0),
                            lineWidth: ScreenUtil().setWidth(40.0),
                            paddingLeft: ScreenUtil().setSp(30.0),
                            paddingRight: ScreenUtil().setSp(30.0),
                            paddingMid: ScreenUtil().setWidth(10.0),
                            fontSize: ScreenUtil().setSp(28.0),
                        ),
                    ],
                )
            ),
        );
    }

    Widget contentView({BuildContext context}){
        return Column(
            children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10
                    ),
                    color: Colors.red,
                    height: 200,
                    width: 200,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10
                    ),
                    color: Colors.green,
                    height: 200,
                    width: 200,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10
                    ),
                    color: Colors.pink,
                    height: 200,
                    width: 200,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10
                    ),
                    color: Colors.purple,
                    height: 200,
                    width: 200,
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10
                    ),
                    color: Colors.cyan,
                    height: 200,
                    width: 200,
                ),
            ],
        );
    }
}
