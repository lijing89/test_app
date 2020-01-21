import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_app_bar.dart';
import 'package:flutter_test_app/app/widgets/bottom_view.dart';


class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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


    List _fiveZanList = [
        {
            'title':'美工赞',
            'subTitle': 'PRAISE TO THE WORKERS',
            'content': '我们开发设计的每一款APP，都是一件艺术品，这个是我们公司服务的最高宗旨。在美工设计上达到您100%满意为止，每一页或每一个细节，我们都要精雕细琢，您不用说，我们自己都会去做。',
            'img': 'Rotary-sowing-logo1.png',
        },
        {
            'title':'速度赞',
            'subTitle': 'SPEED PRAISE',
            'content': '每一次页面切换，每一次点击操作；不管是10个人同时使用，还是几十万人同时使用，都对APP使用的操作速度上都有极致要求；我们花费很多精力，对每次操作的速度研发，都比其他同行公司要做的多。',
            'img': 'Rotary-sowing-logo2.png',
        },
        {
            'title':'体验赞',
            'subTitle': 'EXPERIENCE PRAISE',
            'content': '一套复杂的操作流程，能否用最少的几步完成，让用户使用简单；每一次操作体验都是用户所想，用户在使用APP的整个过程中，是否愉悦，是否够傻瓜。这才是一个好的APP，用户体验好，才真的好。',
            'img': 'Rotary-sowing-logo3.png',
        },
        {
            'title':'运营赞',
            'subTitle': 'OPERATIONAL PRAISE',
            'content': '很多开发APP的客户，大部分都是APP运营新手，很多基本知识需要学习，或者更需要一些推广运营方面的专业指导。为此网奇花费很多心思，准备了线上APP运营学院和专业的运营专家为您人工指导。',
            'img': 'Rotary-sowing-logo4.png',
        },
        {
            'title':'服务赞',
            'subTitle': 'SERVICE PRAISE',
            'content': '时间：每位客户服务时间都是24小时；\n态度：每次服务的沟通，我们都是耐心的热情服务；\n专业：我们不会配备新人，每个服务人员都是APP多年经验的专家。\n及时：每次线上沟通回复都在第一时间回复。',
            'img': 'Rotary-sowing-logo5.png',
        },
    ];

    List _evaluationList = [
        {
            'name':'张总',
            'company': '爱蜂集',
            'content': '网奇是一个很朝气蓬勃的团队，也是一个很积极向上的团队，每一次沟通合作，总能给我们带来新的东西，我们不仅仅在平台建设方面进行合作，还常常就我们的品牌策略进行深入的洽谈，他们能将我们想要的东西甚至我们还没考虑到的细节展示在我们的平台中，为我们的品牌…',
            'img': 'evaluate-img.jpg',
        },
        {
            'name':'李总',
            'company': '献王酒业',
            'content': '和网奇合作，源于他们对我们需求的充分理解以及对我们的品牌战略所提出的精准解决方案。他们的解决方案却令我们佩服：网奇已经不仅仅是一个平台建设专家，更是一个品牌发展不可或缺的合作伙伴！',
            'img': 'evaluate-img1.jpg',
        },
        {
            'name':'栾总',
            'company': '闲小赚',
            'content': '网奇的创意是无限的，在合作这么多年以来，他们每一次都能给我们不同的惊喜。在合作过程中也能非常精准的捕捉到我们想要的信息，并将这些转换为设计成果展示在我们及我们的客户面前。论设计功力，也许网奇不是NO.1，但是论程度及配合意识、服务精神，网奇让我们…',
            'img': 'evaluate-img2.jpg',
        },
        {
            'name':'汪总',
            'company': '易栈',
            'content': '与网奇合作近6年的时间，网奇一直以真诚的态度来对待我们的项目，并以“持续追求更高品质”的精神为我们公司创造了一个又一个全新的互联网形象，为我们公司的企业文化建设以及品牌形象建设做出了不可磨灭的贡献，感谢网奇，永远期待下一次的合作和惊喜！',
            'img': 'evaluate-img3.jpg',
        },
    ];


    CustomAppbarController _appbarController = CustomAppbarController();

    double appbarH = 60.0;

    ScrollController _scrollController = ScrollController();
    SwiperController _swiperFiveZanController = SwiperController();
    SwiperController _swiperEvaluationController = SwiperController();

    itemOnTap({int index}){
        print('点击了index = $index');
        //先不跳 还没写完
        Application.router.navigateTo(context, _items[index]['router'],clearStack: true,transition: TransitionType.fadeIn);
    }

    @override
    void initState() {
        // TODO: implement initState
        super.initState();
    }

    @override
    void dispose() {
        // TODO: implement dispose
        super.dispose();
        _swiperFiveZanController?.dispose();
        _swiperEvaluationController?.dispose();
        _scrollController?.dispose();
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
                            height: double.infinity,
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
                            initIndex: 1,
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
        return Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            color: Colors.white,
            child: Column(
                children: <Widget>[
                    GestureDetector(
                        onTap: (){
                            showToast('放歌了！！！');
                        },
                        child: Container(
                            margin: EdgeInsets.only(
                                bottom: 20.0
                            ),
                            width: double.infinity,
                            child: Image.asset(AssetUtil.image('five_zan_head_bg.png'),fit: BoxFit.fitWidth,),
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 50.0,
                            bottom: 50.0,
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                        ),
                        child: Column(
                            children: <Widget>[
                                titleView(
                                    title: '我们的服务',
                                    subTitle: 'Our Services',
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        top: 40.0,
                                        bottom: 40.0,
                                        left: 20.0,
                                        right: 20.0,
                                    ),
                                    height: ScreenUtil().setWidth(320),
                                    child: Row(
                                        children: <Widget>[
                                            Expanded(child: Image.asset(AssetUtil.image('jx.png'),fit: BoxFit.fill,),),
                                            Expanded(child: Image.asset(AssetUtil.image('jx2.png'),fit: BoxFit.fill,),),
                                        ],
                                    ),
                                ),
                                titleView(
                                    title: '五赞服务体系',
                                    subTitle: 'Five Zan Service System',
                                ),
                                Container(
                                    width: double.infinity,
                                    height: ScreenUtil.getInstance().setWidth(700),
                                    decoration: BoxDecoration(
//                            color: Colors.red,
                                    ),
                                    padding: EdgeInsets.only(
                                        bottom: 40
                                    ),
                                    child:Stack(
                                        alignment: Alignment.center,
                                        children: <Widget>[
                                            Swiper(
                                                itemBuilder: (BuildContext context,int index){
                                                    Map item = _fiveZanList[index];
                                                    return GestureDetector(
                                                        onTap: (){
                                                            print('five zan swiper onTap index = $index');
                                                        },
                                                        child: Container(
//                                                color: Colors.pink,
                                                            child: Column(
                                                                children: <Widget>[
                                                                    Container(
                                                                        height: ScreenUtil().setWidth(300),
                                                                        child: Image.asset(AssetUtil.image(item['img']),fit: BoxFit.fitHeight,),
                                                                    ),
                                                                    Container(
                                                                        child: Text(
                                                                            item['title'],
                                                                            style: TextStyle(
                                                                                fontSize: 20.0,
                                                                                color: Colors.cyan,
                                                                                fontWeight: FontWeight.w800,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Container(
                                                                        child: Text(
                                                                            item['subTitle'],
                                                                            style: TextStyle(
                                                                                fontSize: 12.0,
                                                                                color: Colors.black54,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Container(
                                                                        padding: EdgeInsets.only(
                                                                            left: 20.0,
                                                                            right: 20.0
                                                                        ),
                                                                        child: Text(
                                                                            item['content'],
                                                                            style: TextStyle(
                                                                                fontSize: 14.0,
                                                                                color: Colors.black87,
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),//Image.network(ApiConfig.photoUrl + _imagesList[index]['path'],fit: BoxFit.fitWidth,),
                                                    );
                                                },
                                                controller: _swiperFiveZanController,
                                                itemCount: _fiveZanList.length,
                                                itemHeight: ScreenUtil().setWidth(900),
                                                itemWidth: ScreenUtil().setWidth(750),
                                                layout: SwiperLayout.DEFAULT,
                                                autoplayDelay: 3000,
                                                autoplayDisableOnInteraction: true,
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(
                                                    left: 10.0,right: 10.0,
                                                ),
                                                child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                        IconButton(
                                                            icon: Icon(
                                                                AppIcon.roundleftfill,
                                                                size: 40.0,
                                                                color: Colors.pink,
                                                            ),
                                                            onPressed: (){
                                                                print('_swiperFiveZanController.index = ${_swiperFiveZanController.index}');
                                                                int index = _swiperFiveZanController.index??0 - 1;
                                                                if(_swiperFiveZanController.index == null || _swiperFiveZanController.index == 0)index = _fiveZanList.length - 1;
                                                                _swiperFiveZanController.move(index,animation: true);
                                                            }
                                                        ),
                                                        IconButton(
                                                            icon: Icon(
                                                                AppIcon.roundrightfill,
                                                                size: 40.0,
                                                                color: Colors.pink,
                                                            ),
                                                            onPressed: (){
                                                                _swiperFiveZanController.next(animation: true);
                                                            }
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    titleView(
                        title: '客户服务评价',
                        subTitle: 'Customer Service Evaluation',
                    ),
                    Container(
                        width: double.infinity,
                        height: ScreenUtil.getInstance().setWidth(700),
                        decoration: BoxDecoration(
//                            color: Colors.red,
                        ),
                        padding: EdgeInsets.only(
                            bottom: 40
                        ),
                        child:Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                                Swiper(
                                    itemBuilder: (BuildContext context,int index){
                                        Map item = _evaluationList[index];
                                        return GestureDetector(
                                            onTap: (){
                                                print('five zan swiper onTap index = $index');
                                            },
                                            child: Container(
//                                                color: Colors.pink,
                                                padding: EdgeInsets.only(
                                                    top: 20.0
                                                ),
                                                child: Column(
                                                    children: <Widget>[
                                                        Expanded(
                                                            child: Container(
                                                                padding: EdgeInsets.only(
                                                                    left: 20.0,
                                                                    right: 20.0
                                                                ),
                                                                child: Text(
                                                                    item['content'],
                                                                    overflow: TextOverflow.ellipsis,
                                                                    maxLines: 9,
                                                                    style: TextStyle(
                                                                        fontSize: 18.0,
                                                                        color: Colors.black87,
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                        Container(
                                                            height: ScreenUtil().setWidth(160),
                                                            child: Row(
                                                                children: <Widget>[
                                                                    Expanded(
                                                                        child: Container(
                                                                            child: Center(
                                                                                child: ClipOval(
                                                                                    child: Image.asset(AssetUtil.image(item['img']),fit: BoxFit.fitHeight,),
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Expanded(
                                                                        child: Container(
                                                                            child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: <Widget>[
                                                                                    Text(
                                                                                        item['name'],
                                                                                        style: TextStyle(
                                                                                            fontSize: 20.0,
                                                                                            color: Colors.cyan,
                                                                                            fontWeight: FontWeight.w400,
                                                                                        ),
                                                                                    ),
                                                                                    Text(
                                                                                        item['company'],
                                                                                        style: TextStyle(
                                                                                            fontSize: 20.0,
                                                                                            color: Colors.cyan,
                                                                                            fontWeight: FontWeight.w400,
                                                                                        ),
                                                                                    ),
                                                                                ],
                                                                            ),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            ),//Image.network(ApiConfig.photoUrl + _imagesList[index]['path'],fit: BoxFit.fitWidth,),
                                        );
                                    },
                                    controller: _swiperFiveZanController,
                                    itemCount: _evaluationList.length,
                                    itemHeight: ScreenUtil().setWidth(900),
                                    itemWidth: ScreenUtil().setWidth(750),
                                    layout: SwiperLayout.DEFAULT,
                                    autoplayDelay: 3000,
                                    autoplayDisableOnInteraction: true,
                                ),
                                Container(
                                    padding: EdgeInsets.only(
                                        left: 10.0,right: 10.0,
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            IconButton(
                                                icon: Icon(
                                                    AppIcon.roundleftfill,
                                                    size: 40.0,
                                                    color: Colors.pink,
                                                ),
                                                onPressed: (){
                                                    print('_swiperFiveZanController.index = ${_swiperFiveZanController.index}');
                                                    int index = _swiperFiveZanController.index??0 - 1;
                                                    if(_swiperFiveZanController.index == null || _swiperFiveZanController.index == 0)index = _fiveZanList.length - 1;
                                                    _swiperFiveZanController.move(index,animation: true);
                                                }
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                    AppIcon.roundrightfill,
                                                    size: 40.0,
                                                    color: Colors.pink,
                                                ),
                                                onPressed: (){
                                                    _swiperFiveZanController.next(animation: true);
                                                }
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 20,
                            left: 10,
                            right: 10.0
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                            '为了您更好的使用我们在不懈努力',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                            ),
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            bottom: 20,
                            left: 10,
                            right: 10.0
                        ),
                        child: Text(
                            '客户喜欢我们的五赞服务，安全的后台，世界一流的客户服务。',
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    Widget titleView({@required String title,@required String subTitle}){
        return Container(
            height: ScreenUtil().setWidth(160),
            width: double.infinity,
            padding: EdgeInsets.only(
                top: 10,
                bottom: 10
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                        ),
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Center(
                                    child: Container(
                                        height: 3,
                                        width: 30,
                                        color: Colors.cyan,
                                    ),
                                ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Center(
                                    child: Text(
                                        subTitle,
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.redAccent,
                                        ),
                                    ),
                                ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Center(
                                    child: Container(
                                        height: 3,
                                        width: 30,
                                        color: Colors.cyan,
                                    ),
                                ),
                            ),
                        ],
                    )
                ],
            ),
        );
    }

    Widget developView({@required String title,@required String content,bool isReverse=false}){
        return Container(
            margin: EdgeInsets.only(top: 20.0,),
            padding: EdgeInsets.all(20.0),
            width: ScreenUtil().setWidth(600),
            height: ScreenUtil().setWidth(300),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.cyan,width: 1),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(
                        isReverse ? content : title,
                        style: TextStyle(
                            fontSize: isReverse ? 14.0 : 20.0,
                            color: Colors.cyan,
                        ),
                    ),
                    Text(
                        isReverse ? title : content,
                        style: TextStyle(
                            fontSize: isReverse ? 20.0 : 14.0,
                            color: Colors.cyan,
                        ),
                    ),
                ],
            ),
        );
    }

}
