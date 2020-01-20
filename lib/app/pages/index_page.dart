import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_app_bar.dart';
import 'package:flutter_test_app/app/widgets/bottom_view.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
    /*
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

    SwiperController _swiperController = SwiperController();
    SwiperController _swiperFiveZanController = SwiperController();
    SwiperController _swiperTeamController = SwiperController();

    itemOnTap({int index}){
        print('点击了index = $index');
        //先不跳 还没写完
        Application.router.navigateTo(context, _items[index]['router'],clearStack: true,transition: TransitionType.fadeIn);
    }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _swiperController.startAutoplay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _swiperController.stopAutoplay();
    _swiperController?.dispose();
    _swiperFiveZanController?.dispose();
    _swiperTeamController?.dispose();
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
                        initIndex: 999,
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
                        width: double.infinity,
                        height: ScreenUtil.getInstance().setWidth(700),
                        decoration: BoxDecoration(
                            color: Colors.red,
                        ),
                        child:Swiper(
                            itemBuilder: (BuildContext context,int index){
                                String img = 'swipImage${index + 1}.png';
                                return GestureDetector(
                                    onTap: (){
                                        print('Swiper onTap index = $index');
                                        Application.router.navigateTo(context, Routes.contact);
                                    },
                                    child: Container(
                                        child: Image.asset(AssetUtil.image(img),fit: BoxFit.fill,),
                                    ),//Image.network(ApiConfig.photoUrl + _imagesList[index]['path'],fit: BoxFit.fitWidth,),
                                );
                            },
                            controller: _swiperController,
                            itemCount: 2,
                            itemWidth: double.infinity,
                            layout: SwiperLayout.DEFAULT,
                            autoplayDelay: 3000,
                            autoplayDisableOnInteraction: true,
                        ),
                    ),
                    titleView(
                        title: 'APP 一站式服务',
                        subTitle: 'APP One-stop Service',
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            bottom: 40.0
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                        ),
                        child: Column(
                            children: <Widget>[
                                itemOne(
                                    title: 'APP  功能开发',
                                    subTitle: '高安全    高易用      高性能',
                                    img:'index4110.png',
                                ),
                                itemOne(
                                    title: 'APP  美工设计',
                                    subTitle: '我们是    APP      艺术家',
                                    img:'index4111.png',
                                ),
                                itemOne(
                                    title: 'APP  功能开发',
                                    subTitle: '高安全    高易用      高性能',
                                    img:'index4112.png',
                                ),
                            ],
                        ),
                    ),
                    titleView(
                        title: '为什么选择我们',
                        subTitle: 'Why did you choose us',
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            bottom: 40.0,
                            left: 20.0,
                            right: 20.0,
                        ),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(
//                                left: ScreenUtil.getInstance().setWidth(20.0),
//                                right: ScreenUtil.getInstance().setWidth(20.0),
                            ),
                            itemCount: _itemsTwo.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                //横轴元素个数
                                crossAxisCount: 2,
                                //纵轴间距
                                mainAxisSpacing: 10,
                                //横轴间距
                                crossAxisSpacing: 10,
                                //子组件宽高长度比例
                                childAspectRatio: 1/2
                            ),
                            itemBuilder: (BuildContext context , int index){
                                return GestureDetector(
                                    onTap: (){
                                        print('index = $index');
                                    },
                                    child: Container(
                                        child: itemTwo(title: _itemsTwo[index]['title'], subTitle: _itemsTwo[index]['subTitle'], img: _itemsTwo[index]['img']),
                                    ),
                                );
                            }
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: bottomItem(title1: '我们致力于为您', title2: ' 打造一件：APP艺术品', img: 'advertisement-bg.jpg'),
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
                    Container(
                        padding: EdgeInsets.only(bottom: 40),
                        child: bottomItem(title1: '真心换诚信，', title2: '优质服务请放心', img: 'advertisement2-bg.jpg'),
                    ),
                    titleView(
                        title: '客户案例欣赏',
                        subTitle: 'Customer Case Application',
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            top: 40.0,
                            bottom: 40.0,
                            left: 20.0,
                            right: 20.0,
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                        ),
                        child: Column(
                            children: <Widget>[
                                GridView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.only(
//                                left: ScreenUtil.getInstance().setWidth(20.0),
//                                right: ScreenUtil.getInstance().setWidth(20.0),
                                    ),
                                    itemCount: _itemsTwo.length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        //横轴元素个数
                                        crossAxisCount: 2,
                                        //纵轴间距
                                        mainAxisSpacing: 10,
                                        //横轴间距
                                        crossAxisSpacing: 10,
                                        //子组件宽高长度比例
                                        childAspectRatio: 1/2
                                    ),
                                    itemBuilder: (BuildContext context , int index){
                                        return GestureDetector(
                                            onTap: (){
                                                print('index = $index');
                                            },
                                            child: Container(
                                                child: Image.asset(AssetUtil.image(_itemsThree[index]['img']),fit: BoxFit.fitWidth,),
                                            ),
                                        );
                                    }
                                ),
                                Container(
                                    height: ScreenUtil().setWidth(160),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                            Expanded(child: SizedBox(),),
                                            Text(
                                                '查看更多',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.cyan,
                                                ),
                                            ),
                                            Icon(
                                                Icons.chevron_right,
                                                size: 20,
                                                color: Colors.cyan,
                                            ),
                                            SizedBox(width: 10,),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    titleView(
                        title: 'APP 开发团队',
                        subTitle: 'App development team',
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
                                        Map item = _teamList[index];
                                        return GestureDetector(
                                            onTap: (){
                                                print('five zan swiper onTap index = $index');
                                            },
                                            child: Container(
                                                alignment: Alignment.center,
//                                                color: Colors.pink,
                                                child: Stack(
                                                    children: <Widget>[
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                top: 20.0,bottom: 20.0,
                                                                left: 40.0,right: 40.0,
                                                            ),
                                                            padding: EdgeInsets.only(
                                                                top: ScreenUtil().setWidth(70),
                                                            ),
                                                            height: ScreenUtil().setWidth(400),
                                                            width: ScreenUtil().setWidth(750),
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(20.0),
                                                                boxShadow: [
                                                                    BoxShadow(
                                                                        color: Colors.cyan,
                                                                        offset: Offset(5, 5),
                                                                        blurRadius: 10.0,
                                                                    )
                                                                ]
                                                            ),
                                                            child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                children: <Widget>[
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
                                                                    Container(
                                                                        padding: EdgeInsets.only(
                                                                            top: 10.0,
                                                                            right: 20.0
                                                                        ),
                                                                        child: Row(
                                                                            children: <Widget>[
                                                                                Expanded(child: SizedBox(),),
                                                                                Center(
                                                                                    child: Container(
                                                                                        height: 3,
                                                                                        width: 30,
                                                                                        color: Colors.cyan,
                                                                                    ),
                                                                                ),
                                                                                Text(
                                                                                    item['name'],
                                                                                    style: TextStyle(
                                                                                        fontSize: 18.0,
                                                                                        color: Colors.cyan,
                                                                                        fontWeight: FontWeight.w600,
                                                                                    ),
                                                                                ),
                                                                            ],
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                        Container(
                                                            margin: EdgeInsets.only(
                                                                left: 20.0
                                                            ),
                                                            height: ScreenUtil().setWidth(140),
                                                            child: Image.asset(AssetUtil.image(item['img']),fit: BoxFit.fitHeight,),
                                                        ),
                                                    ],
                                                ),
                                            ),//Image.network(ApiConfig.photoUrl + _imagesList[index]['path'],fit: BoxFit.fitWidth,),
                                        );
                                    },
                                    controller: _swiperTeamController,
                                    itemCount: _fiveZanList.length,
                                    itemHeight: ScreenUtil().setWidth(300),
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
                                                    print('_swiperTeamController.index = ${_swiperTeamController.index}');
                                                    int index = _swiperTeamController.index??0 - 1;
                                                    if(_swiperTeamController.index == null || _swiperTeamController.index == 0)index = _fiveZanList.length - 1;
                                                    _swiperTeamController.move(index,animation: true);
                                                }
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                    AppIcon.roundrightfill,
                                                    size: 40.0,
                                                    color: Colors.pink,
                                                ),
                                                onPressed: (){
                                                    _swiperTeamController.next(animation: true);
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
                                            fontSize: 14.0,
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

    Widget itemOne({@required String title,@required String subTitle,@required String img}){

        return Container(
            height: ScreenUtil().setWidth(560),
            width: double.infinity,
            margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 10,
                bottom: 10,
            ),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                    BoxShadow(
                        color: Colors.cyan,
                        offset: Offset(5, 5),
                        blurRadius: 10.0,
                    )
                ]
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                        height: ScreenUtil().setWidth(360),
                        child: Image.asset(AssetUtil.image(img),fit: BoxFit.fitHeight,),
                    ),
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.cyan,
                        ),
                    ),
                    Text(
                        subTitle,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                        ),
                    ),
                ],
            ),
        );
    }

    Widget itemTwo({@required String title,@required String subTitle,@required String img}){

        return Container(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Container(
                        child: Image.asset(AssetUtil.image(img),fit: BoxFit.fitWidth,),
                    ),
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                        ),
                    ),
                    Text(
                        subTitle,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black54,
                        ),
                    ),
                ],
            ),
        );
    }

    Widget bottomItem({@required String title1,@required String title2,@required String img}){
        return Container(
            width: double.infinity,
            height: ScreenUtil().setWidth(240.0),
            decoration: BoxDecoration(
//                color: Colors.redAccent,
                image: DecorationImage(image: AssetImage(AssetUtil.image(img)),fit: BoxFit.fitWidth)
            ),
            child: Row(
                children: <Widget>[
                    Expanded(flex:3,child: SizedBox(),),
                    Expanded(
                        flex: 4,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Text(
                                    title1,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                    ),
                                ),
                                Text(
                                    title2,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(width: 10,),
                ],
            ),
        );
    }
}
