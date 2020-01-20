import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_app_bar.dart';
import 'package:flutter_test_app/app/widgets/bottom_view.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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

    List _itemsTwo = [
        {
            'title':'开发费用少',
            'subTitle': '开发费用低于北、上、广一线城市30%,而且质量至少高于北、上、广50%',
            'img': 'Choice-tu1.png',
        },
        {
            'title':'开发速度快',
            'subTitle': '全国最先采用 Flutter 技术开发 APP 开发速度快，运行速度快 ',
            'img': 'Choice-tu2.png',
        },
        {
            'title':'开发团队优',
            'subTitle': '网奇公司的每位开发团队工程师 至少5年以上经验，拒绝毕业生',
            'img': 'Choice-tu3.png',
        },
        {
            'title':'服务体系统',
            'subTitle': '全国独家“五赞”诚信技术服务体系 用优质的服务为我们立口碑',
            'img': 'Choice-tu4.png',
        },
    ];


    List _itemsThree = [
        {
            'img': 'dianshang1.png',
        },
        {
            'img': 'dianshang3.png',
        },
        {
            'img': 'jiaoyu1.png',
        },
        {
            'img': 'jiankang3.png',
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

    List _teamList = [
        {
            'name':'Alex 总经理',
            'content': '从事APP开发行业7年，为多家公司提供商业模式设计和技术服务，帮助多家公司搭建APP平台，提供营销顶层设计服务。',
            'img': 'team-circular1.png',
        },
        {
            'name':'Aries 技术总监',
            'content': '网奇公司技术总监，管理APP产品线工程研发团队，经手大量APP开发项目，深入研究高并发/高性能/高可用/大数据的架构和解决方案',
            'img': 'team-circular2.png',
        },
        {
            'name':'Leo 首席架构师',
            'content': '网奇公司架构师、高级技术顾问，原阿里巴巴虾米音乐北京分公司产品部技术经理。拥有8年的大型系统开发经验',
            'img': 'team-circular3.png',
        },
        {
            'name':'Zeratul 产品总监',
            'content': '产品总监，资深全栈工程师。十余年web从业经历。对系统架构、模块开发、网站运维都有丰富的经验。长期负责公司产品、研发及运营工作',
            'img': 'team-circular4.png',
        },
        {
            'name':'Tony 项目经理',
            'content': '项目经理，十余年系统项目行业经验，早期负责程序开发，现在主要负责用户需求分析，制定项目开发计划与可行性方案',
            'img': 'team-circular5.png',
        },
        {
            'name':'周原 APP实战专家',
            'content': 'APP运营顾问，参与讨论策划多家企业APP运营计划，培训服务过一线企业30余家',
            'img': 'team-circular6.png',
        },
    ];


    CustomAppbarController _appbarController = CustomAppbarController();

    double appbarH = 60.0;

    ScrollController _scrollController = ScrollController();
    SwiperController _swiperFiveZanController = SwiperController();

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
                            initIndex: 0,
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
                    Container(
                        margin: EdgeInsets.only(
                            bottom: 20.0
                        ),
                        width: double.infinity,
                        child: Image.asset(AssetUtil.image('about_header_img.png'),fit: BoxFit.fitWidth,),
                    ),
                    titleView(
                        title: '网奇 APP艺术家',
                        subTitle: 'Netqi Artists',
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            bottom: 40.0,
                            left: 20.0,
                            right: 20.0
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                        ),
                        width: double.infinity,
                        child: Column(
                            children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 20.0,
                                        right: 20.0,
                                        bottom: 20.0,
                                    ),
                                    width: double.infinity,
                                    child: Image.asset(AssetUtil.image('logo_black.png'),fit: BoxFit.fitWidth,),
                                ),
                                Text(
                                    '秦皇岛网奇网络科技有限公司始建于2006年，'
                                        '位于美丽的海滨城市—河北秦皇岛。网奇致力于为中国企业提供高品质的互联网解决方案服务，'
                                        '服务涵盖：APP软件开发、网站建设、电商平台搭建、大数据平台搭建、以及行业解决方案服务； '
                                        '网奇的五赞服务涉及：视频直播、商城、教育、智能硬件、智能家居、智能社区、移动办公、'
                                        '新闻、物流、社交、汽车、旅游、酒店宾馆、金融、婚庆、餐饮、房地产、服装、通信、'
                                        '建材、母婴、医疗、生鲜等多行业领域。',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        wordSpacing:12.0
                                    ),
                                ),
                            ],
                        ),
                    ),
                    GestureDetector(
                        onTap: (){
                            showToast('视频播放！！！');
                        },
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                bottom: 20.0,
                            ),
                            width: double.infinity,
                            child: Image.asset(AssetUtil.image('video_bg.png'),fit: BoxFit.fitWidth,),
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10.0,
                            bottom: 40.0,
                        ),
                        height: ScreenUtil().setWidth(600),
                        width: ScreenUtil().setWidth(600),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5, 5),
                                    blurRadius: 10.0,
                                )
                            ]
                        ),
                        child: Row(
                            children: <Widget>[
                                Expanded(
                                    child: Container(
                                        child: Image.asset(AssetUtil.image('us_1.png'),fit: BoxFit.fitWidth,),
                                    ),
                                ),
                                Container(
                                    height: double.infinity,
                                    width: 1,
                                    color: Colors.grey,
                                ),
                                Expanded(
                                    child: Container(
                                        child: Image.asset(AssetUtil.image('us_2.png'),fit: BoxFit.fitWidth,),
                                    ),
                                ),
                            ],
                        ),
                    ),
                    titleView(
                        title: '总经理',
                        subTitle: 'Customer Case Appreciation',
                    ),
                    Container(
                        width: double.infinity,
                        child: Image.asset(AssetUtil.image('boss.png'),fit: BoxFit.fitWidth,),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20.0,
                            top: 20.0,
                            bottom: 20.0,
                        ),
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: 'Alex ',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.cyan,
                                ),
                                children: [
                                    TextSpan(
                                        text: '(王旗) ',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.cyan,
                                        ),
                                    )
                                ]
                            )
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        decoration: BoxDecoration(
//                            image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                        ),
                        width: double.infinity,
                        child: Text(
                            '    从事APP开发行业7年，为多家公司提供商业模式设计和技术服务，帮助多家公司搭建APP平台，提供营销顶层设计服务。是一个懂营销的，技术CEO！',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black87,
                                letterSpacing:5.0
                            ),
                        ),
                    ),
                    titleView(
                        title: '发展历程',
                        subTitle: 'Development History',
                    ),
                    developView(
                        title: '2006年',
                        content: '网奇在美丽的海滨城市秦皇岛正式成立！开发了多种建站CMS产品。',
                        isReverse: true
                    ),
                    developView(
                        title: '2008年',
                        content: '国内第一套.net版CMS发布，具有功能强大、稳定安全、SEO支持等特点。',
                    ),
                    developView(
                        title: '2012年',
                        content: '累计服务客户上千家，好评如潮，并正式涉足手机端网站及APP的开发业务。',
                        isReverse: true
                    ),
                    developView(
                        title: '2018年',
                        content: '通过多年的技术积累，成功完成多种行业多个领域的APP开发，并不断扩充中。',
                        isReverse: true
                    ),
                    SizedBox(height: 20.0,),
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
                            ],
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
