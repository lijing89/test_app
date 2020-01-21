import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_app_bar.dart';
import 'package:flutter_test_app/app/widgets/bottom_view.dart';
import 'package:flutter_test_app/app/widgets/commit_button.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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

    List _managerList = [
        {
            'name':'韩顾问',
            'img':'tx1.jpg'
        },
        {
            'name':'胡顾问',
            'img':'tx2.jpg'
        },
        {
            'name':'田顾问',
            'img':'tx3.jpg'
        },
        {
            'name':'王顾问',
            'img':'tx4.jpg'
        },
    ];

    List _questionList = [
        {
            'ask':'如果项目过程中客户提出超出合同范围，或与原合同？',
            'answer':'针对客户提出的超出合同范围的需求，将根据需求评估需要追加的开发费用并在签订相应的补充协议后开始安排和落实相对开发工作。针。。。。',
        },
        {
            'ask':'为什么要填写项目调查表',
            'answer':'项目调查表，是关于项目设计，开发方面需要提前征求客户意见的调查表，体现了客户对项目的细节要求。准确完善的填写项目调查表将有。。。',
        },
        {
            'ask':'项目开发阶段有哪些流程？',
            'answer':'1.项目启动'
                '\n1)项目启动的前提条件：签订开发合同，支付开发首款，提供项目资料',
        },
        {
            'ask':'如果我们自己维护，管理难度大吗，需要请专门的网站',
            'answer':'难度不大，不需要请专门的管理员，我们开发的网站后台管理方便，发布新闻和上传产品，操作就像发邮件一样的方便，但有些客户的产品。。。',
        },
        {
            'ask':'如果我们的网站有一些内容需要更新是否还要收费呢？',
            'answer':'我们提供一年的网站技术维护，比如网站打不开、网站出现乱码、网站页面显示不正确、网站给黑客攻击等等，我们都会及时给予免费维护。。。',
        },
        {
            'ask':'网站站内seo优化有哪些技巧吗？',
            'answer':'1、清晰的导航是网站被良好收录的关键'
                    '\n蜘蛛爬行网站首先是爬到网站首页，然后会通过网站导航浏览整。。。',
        },
    ];

    CustomAppbarController _appbarController = CustomAppbarController();

    double appbarH = 60.0;

    ScrollController _scrollController = ScrollController();

    TextEditingController _nameController = TextEditingController();
    TextEditingController _phoneController = TextEditingController();
    TextEditingController _orderController = TextEditingController();

    String _newValue = '咨询';

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
    _scrollController?.dispose();
    _nameController?.dispose();
    _phoneController?.dispose();
    _orderController?.dispose();
  }

    @override
    Widget build(BuildContext context) {

        //假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334),设置字体大小根据系统的“字体大小”辅助选项来进行缩放,默认为false
        //默认设计稿为6p7p8p尺寸 width : 1080px , height:1920px , allowFontScaling:false
        ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true)..init(context);

        return Scaffold(
            body: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                    // 触摸收起键盘
                    FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    child:  Stack(
                        children: <Widget>[
                            Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(1334),
                                color: Colors.white,
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
                                initIndex: 4,
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
            ),
        );
    }

    Widget contentView({BuildContext context}){
        return Column(
            children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                        bottom: 20.0
                    ),
                    width: double.infinity,
                    child: Image.asset(AssetUtil.image('contact_head_bg.png'),fit: BoxFit.fitWidth,),
                ),
                titleView(
                    title: '电话与微信沟通',
                    subTitle: 'IPhone and Wechat',
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 10,
                        left: 10,right: 10,
                    ),
                    height: ScreenUtil().setWidth(500),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppStyle.colorContactBg,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage(AssetUtil.image('iphone-bg.png')),fit: BoxFit.contain,alignment: Alignment.centerRight),
                    ),
                    child: itemOne(
                        title: '电话沟通',
                        child: Container(
                            padding: EdgeInsets.all(20),
                            height: double.infinity,
                            width: double.infinity,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                    RichText(
                                        text: TextSpan(
                                            text: '王经理：',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white,
                                                wordSpacing:12.0,
                                                fontWeight: FontWeight.w400,
                                            ),
                                            children: [
                                                TextSpan(
                                                    text: '139xxxxxxxx',
                                                ),
                                            ]
                                        ),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: '韩经理：',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white,
                                                wordSpacing:12.0,
                                                fontWeight: FontWeight.w400,
                                            ),
                                            children: [
                                                TextSpan(
                                                    text: '139xxxxxxxx',
                                                ),
                                            ]
                                        ),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: '胡经理：',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white,
                                                wordSpacing:12.0,
                                                fontWeight: FontWeight.w400,
                                            ),
                                            children: [
                                                TextSpan(
                                                    text: '139xxxxxxxx',
                                                ),
                                            ]
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: 10,bottom: 30,
                        left: 10,right: 10,
                    ),
                    height: ScreenUtil().setWidth(500),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppStyle.colorContactBg,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(image: AssetImage(AssetUtil.image('wxbg.png')),fit: BoxFit.contain,alignment: Alignment.centerRight),
                    ),
                    child: itemOne(
                        title: '微信沟通',
                        child: Container(
                            padding: EdgeInsets.all(20),
                            height: double.infinity,
                            width: double.infinity,
                            child: Image.asset(AssetUtil.image('ewm.jpg'),fit: BoxFit.fitHeight,),
                        ),
                    ),
                ),
                titleView(
                    title: '在线沟通',
                    subTitle: 'Online Communication',
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                    ),
                    child: ListView.builder(
                        padding: EdgeInsets.only(
                            top: ScreenUtil.getInstance().setWidth(20),
                            left: ScreenUtil.getInstance().setWidth(20.0),
                            right: ScreenUtil.getInstance().setWidth(20.0),
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _managerList.length,
                        itemBuilder: managerItemBuilder,
                    ),
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                    ),
                    child: Column(
                        children: <Widget>[
                            titleView(
                                title: '投诉建议',
                                subTitle: 'Complaint Suggestions',
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    left: ScreenUtil.getInstance().setWidth(36),
                                    right: ScreenUtil.getInstance().setWidth(36),
                                    top: ScreenUtil.getInstance().setWidth(36),
                                ),
                                padding: EdgeInsets.only(
                                    left:ScreenUtil.getInstance().setWidth(20),
                                    right:ScreenUtil.getInstance().setWidth(20),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(ScreenUtil.getInstance().setWidth(20.0))
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                        suggestionTitleView(title: '订单类型：'),
                                        Row(
                                            children: <Widget>[
                                                SizedBox(width: ScreenUtil().setWidth(150),),
                                                Radio<String>(
                                                    activeColor: AppStyle.colorContactBg,
                                                    value: "咨询",
                                                    groupValue: _newValue,
                                                    onChanged: (value) {
                                                        setState(() {
                                                            _newValue = value;
                                                        });
                                                    }),
                                                Text('咨询'),
                                                SizedBox(width: 5,),
                                                Radio<String>(
                                                    activeColor: AppStyle.colorContactBg,
                                                    value: "建议",
                                                    groupValue: _newValue,
                                                    onChanged: (value) {
                                                        setState(() {
                                                            _newValue = value;
                                                        });
                                                    }),
                                                Text('建议'),
                                                SizedBox(width: 5,),
                                                Radio<String>(
                                                    activeColor: AppStyle.colorContactBg,
                                                    value: "投诉",
                                                    groupValue: _newValue,
                                                    onChanged: (value) {
                                                        setState(() {
                                                            _newValue = value;
                                                        });
                                                    }),
                                                Text('投诉'),
                                                SizedBox(width: 5,),
                                            ],
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                    suggestionTitleView(title: '姓  名：'),
                                                    Expanded(
                                                        child: Container(
                                                            height: ScreenUtil().setWidth(60.0),
                                                            child: TextField(
                                                                controller: _nameController,
                                                                keyboardType: TextInputType.text,
                                                                decoration: InputDecoration(
                                                                    border: OutlineInputBorder(
//                                                borderSide: BorderSide(
//                                                    color: Colors.cyan,
//                                                    width: 1.0
//                                                ),
                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                    ),
                                                                ),
                                                                style: TextStyle(
                                                                    color: AppStyle.colorDark
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                    suggestionTitleView(title: '电  话：'),
                                                    Expanded(
                                                        child: Container(
                                                            height: ScreenUtil().setWidth(60.0),
                                                            child: TextField(
                                                                controller: _phoneController,
                                                                keyboardType: TextInputType.phone,
                                                                decoration: InputDecoration(
                                                                    border: OutlineInputBorder(
//                                                borderSide: BorderSide(
//                                                    color: Colors.cyan,
//                                                    width: 1.0
//                                                ),
                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                    ),
                                                                ),
                                                                style: TextStyle(
                                                                    color: AppStyle.colorDark
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                    suggestionTitleView(title: '订单内容：'),
                                                    Expanded(
                                                        child: Container(
                                                            child: TextField(
                                                                maxLines: 5,
                                                                controller: _orderController,
                                                                keyboardType: TextInputType.text,
                                                                decoration: InputDecoration(
                                                                    border: OutlineInputBorder(
//                                                borderSide: BorderSide(
//                                                    color: Colors.cyan,
//                                                    width: 1.0
//                                                ),
                                                                        borderRadius: BorderRadius.circular(5.0),
                                                                    ),
                                                                ),
                                                                style: TextStyle(
                                                                    color: AppStyle.colorDark
                                                                ),
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(top: 20,bottom: 30),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                    Container(
                                                        padding: EdgeInsets.only(right: 20),
                                                        alignment: Alignment.center,
                                                        child: CommitButton(
                                                            title: '发送订单',
                                                            fontColor: Colors.white,
                                                            bgColor: AppStyle.colorContactBg,
                                                            height: ScreenUtil().setWidth(66.0),
                                                            width: ScreenUtil().setWidth(192.0),
                                                            callBack: (){
                                                                showToast('$_newValue已经提交完了！！');
                                                            },
                                                        ),
                                                    ),
                                                    Container(
                                                        alignment: Alignment.center,
                                                        child: CommitButton(
                                                            title: '重新填写',
                                                            fontColor: Colors.black87,
                                                            bgColor: Colors.grey.withOpacity(0.8),
                                                            height: ScreenUtil().setWidth(66.0),
                                                            width: ScreenUtil().setWidth(192.0),
                                                            callBack: (){
                                                                _nameController.value = TextEditingValue(text: '');
                                                                _phoneController.value = TextEditingValue(text: '');
                                                                _orderController.value = TextEditingValue(text: '');
                                                                _newValue = '咨询';
                                                                setState(() {});
                                                            },
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
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                    ),
                    child: Column(
                        children: <Widget>[
                            titleView(
                                title: '公司地址',
                                subTitle: 'Company address',
                            ),
                            Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                child: Image(image: AssetImage(AssetUtil.image('map.png')),fit: BoxFit.fitWidth,),
                            ),
                        ],
                    ),
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AssetUtil.image('index4-bg.jpg')),fit: BoxFit.cover)
                    ),
                    child: Column(
                        children: <Widget>[
                            titleView(
                                title: '常见问题',
                                subTitle: 'Common problem',
                            ),
                            Container(
                                width: double.infinity,
                                child: ListView.builder(
                                    padding: EdgeInsets.only(
                                        top: ScreenUtil.getInstance().setWidth(20),
                                        left: ScreenUtil.getInstance().setWidth(20.0),
                                        right: ScreenUtil.getInstance().setWidth(20.0),
                                    ),
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: _questionList.length,
                                    itemBuilder: questionItemBuilder,
                                ),
                            ),
                        ],
                    ),
                ),
            ],
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

    Widget itemOne({@required String title,@required Widget child}){
        return Container(
            padding: EdgeInsets.all(20.0),
            height: double.infinity,
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            wordSpacing:12.0,
                            fontWeight: FontWeight.w600,
                        ),
                    ),
                    SizedBox(height: 10,),
                    Container(width: double.infinity,height: 1,color: Colors.white,),
                    SizedBox(height: 10,),
                    Expanded(child: child),
                ],
            ),
        );
    }

    Widget managerItemBuilder(BuildContext context,int index){
        Map item = _managerList[index];
        return Container(
            margin: EdgeInsets.only(
                top: 10,bottom: 30,
                left: 10,right: 10,
            ),
            padding: EdgeInsets.only(
                top: 20.0,bottom: 20.0,
            ),
            height: ScreenUtil().setWidth(500),
            width: double.infinity,
            decoration: BoxDecoration(
//                color: AppStyle.colorContactBg,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                    color: AppStyle.colorContactBg,
                    width: 1
                )
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    Container(
                        height: ScreenUtil().setWidth(200),
                        child: ClipOval(
                            child: Image.asset(AssetUtil.image(item['img']),fit: BoxFit.fitHeight,),
                        ),
                    ),
                    Text(
                        item['name']??'',
                        style: TextStyle(
                            fontSize: 24.0,
                            color: AppStyle.colorContactBg,
                            wordSpacing:12.0,
                            fontWeight: FontWeight.w600,
                        ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Text(
                                'QQ号码：',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                    wordSpacing:12.0,
                                    fontWeight: FontWeight.w400,
                                ),
                            ),
                            Container(
                                height: ScreenUtil().setWidth(34),
                                child: Image.asset(AssetUtil.image('qq-bg.png'),fit: BoxFit.fitHeight,),
                            ),
                        ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            RichText(
                                text: TextSpan(
                                    text: '联系方式：',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        wordSpacing:12.0,
                                        fontWeight: FontWeight.w400,
                                    ),
                                    children: [
                                        TextSpan(
                                            text: '139xxxxxxxx',
                                        ),
                                    ]
                                ),
                            ),
                        ],
                    ),
                ],
            ),
        );
    }

    Widget questionItemBuilder(BuildContext context,int index){
        Map item = _questionList[index];
        return Container(
            margin: EdgeInsets.only(
                top: 10,bottom: 30,
                left: 10,right: 10,
            ),
            padding: EdgeInsets.only(
                top: 20.0,bottom: 20.0,
            ),
            height: ScreenUtil().setWidth(500),
            width: double.infinity,
            decoration: BoxDecoration(
//                color: AppStyle.colorContactBg,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                    color: AppStyle.colorContactBg,
                    width: 1
                )
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 10,right: 10),
                                height: ScreenUtil().setWidth(50),
                                width: ScreenUtil().setWidth(50),
                                color: Colors.cyan,
                                child: Center(
                                    child: Text(
                                        'Q',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            wordSpacing:12.0,
                                            fontWeight: FontWeight.w400,
                                        ),
                                    ),
                                ),
                            ),
                            Expanded(
                                child: Text(
                                    item['ask']??'',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.cyan,
                                        wordSpacing:12.0,
                                        fontWeight: FontWeight.w400,
                                    ),
                                ),
                            ),
                        ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 10,right: 10),
                                height: ScreenUtil().setWidth(50),
                                width: ScreenUtil().setWidth(50),
                                color: Colors.black,
                                child: Center(
                                    child: Text(
                                        'A',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            wordSpacing:12.0,
                                            fontWeight: FontWeight.w400,
                                        ),
                                    ),
                                ),
                            ),
                            Text(
                                '答：',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black87,
                                    wordSpacing:12.0,
                                    fontWeight: FontWeight.w400,
                                ),
                            ),
                        ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 10,right: 10),
                                width: ScreenUtil().setWidth(50),
                                color: Colors.black,
                            ),
                            Expanded(
                                child: Text(
                                    item['answer']??'',
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black87,
                                        wordSpacing:12.0,
                                        fontWeight: FontWeight.w400,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ],
            ),
        );
    }

    Widget suggestionTitleView({String title}){
        return Container(
            height: ScreenUtil().setWidth(40),
            width: ScreenUtil().setWidth(170),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Text('* ',style: TextStyle(color: Colors.red,fontSize: 14),),
                    Text(
                        title,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            wordSpacing:10.0,
                            fontWeight: FontWeight.w400,
                        ),
                    ),
                ],
            ),
        );
    }
}
