import 'package:flutter/material.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/widgets/customAppBar/custom_controller.dart';

export 'package:flutter_test_app/app/widgets/customAppBar/custom_controller.dart';
/*
*
    FontWeight fontWeight=FontWeight.w400,
    double fontSize=13,lineWidth=30.0,lineHeight
*
* */
class CustomAppbar extends StatefulWidget {
    final double width;
    final double height;
    final double itemHeight;
    final double lineWidth;
    final double lineHeight;
    final double paddingLeft;
    final double paddingRight;
    final double paddingMid;
    final double fontSize;
    final ScrollController controller;
    final CustomAppbarController appbarController;
    final Function itemOnTap;
    final List data;
    final String fieldName;
    final Color fontColor;
    final Color activeColor;
    final Color lineActiveColor;
    final Color bgColor;
    final Color bgColorWithOpacity;
    final int initIndex;
    final FontWeight fontWeight;
    CustomAppbar({
        @required this.width,
        this.height = 60,
        this.itemHeight = 40,
        this.lineHeight=2.0,
        this.lineWidth=30.0,
        this.paddingLeft=5.0,
        this.paddingRight=5.0,
        this.paddingMid=5.0,
        this.fontSize=13.0,
        this.controller,
        this.appbarController,
        this.fontColor=Colors.white,
        this.activeColor=Colors.red,
        this.lineActiveColor=Colors.red,
        this.bgColor= const Color.fromRGBO(12, 52, 53, 1),
        this.bgColorWithOpacity= const Color.fromRGBO(12, 52, 53, 0.8),
        this.initIndex=0,
        this.fontWeight=FontWeight.w400,
        @required this.itemOnTap,
        @required this.data,
        @required this.fieldName,
    });
    @override
    _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {

    ScrollController _controller;
    CustomAppbarController _tabBarController;
    int _currentIndex = 0;
    bool _showItems = false;
    double _bgColorWithoutOpacityHeight = 150.0;
    bool _bgColorWithOpacity = false;

    _onScrollController(){
//        _tabBarController.scroll();
        if(_controller.position.pixels <= _bgColorWithoutOpacityHeight && _bgColorWithOpacity){
            print('_controller.position.pixels = ${_controller.position.pixels},_bgColorWithOpacity = $_bgColorWithOpacity');
            _bgColorWithOpacity = false;
            if(_showItems)_showItems = false;
            setState(() {});
        }
        if(_controller.position.pixels > _bgColorWithoutOpacityHeight && !_bgColorWithOpacity){
            print('_controller.position.pixels = ${_controller.position.pixels},_bgColorWithOpacity = $_bgColorWithOpacity');
            _bgColorWithOpacity = true;
            if(!_showItems)_showItems = true;
            setState(() {});
        }
    }
    _onCustomAppbarController(){
        switch (_tabBarController.event){
            case CustomAppbarController.SELECT:

                print('CustomAppbarController.SELECT');

                break;
            case CustomAppbarController.SCROLL:

                print('CustomAppbarController.SCROLL');

                break;
        }
    }

    @override
    void initState() {
        // TODO: implement initState
        super.initState();
        _currentIndex = widget.initIndex;
        _controller = widget.controller??ScrollController();
        _tabBarController = widget.appbarController??CustomAppbarController();
        _tabBarController.index = _currentIndex;
        _controller.addListener(_onScrollController);
        _tabBarController.addListener(_onCustomAppbarController);
    }
    @override
    void dispose() {
        // TODO: implement dispose
        super.dispose();
        _controller.removeListener(_onScrollController);
        _tabBarController.removeListener(_onCustomAppbarController);
        _controller.dispose();
        _tabBarController.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            width: widget.width,
            height: MediaQuery.of(context).padding.top + widget.height + (_showItems ? (widget.data.length/3).ceil() * widget.itemHeight : 0),
            color: _bgColorWithOpacity ? widget.bgColorWithOpacity : widget.bgColor,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
            ),
            child: Column(
                children: <Widget>[
                    Container(
                        height: widget.height,
                        width: widget.width,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                GestureDetector(
                                    onTap: (){
                                        Application.router.navigateTo(context, Routes.index,clearStack: true,transition: TransitionType.fadeIn);
                                    },
                                    child: Container(
                                        height: 30.0,
                                        padding: EdgeInsets.only(left: 10,),
                                        child: Image.asset(AssetUtil.image('logo.png'),fit: BoxFit.fitHeight,),
                                    ),
                                ),
                                IconButton(
                                    icon: Icon(
                                        _showItems ? Icons.close : Icons.menu,
                                        size: 30.0,
                                        color: Colors.white,
                                    ),
                                    onPressed: (){
                                        _showItems = !_showItems;
                                        _tabBarController.showItems = _showItems;
                                        print('_tabBarController.showItems = ${_tabBarController.showItems},_showItems = $_showItems');
                                        setState(() {});
                                    }
                                )
                            ],
                        ),
                    ),
                    Offstage(
                        offstage: !_showItems,
                        child: Container(
                            child: Column(
                                children: <Widget>[
                                    ...buildWidgets(widget.data??[]),
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    List<Widget> buildWidgets(List data){
        List<Widget> items = [];
        if(data.isEmpty)return items;
        int max = (data.length/3).ceil();
        for(int i = 0 ; i < max ; i ++){
            items.add(Container(
                height: widget.itemHeight,
                child: Row(
                    children: <Widget>[
                        i * 3 + 0 >= data.length ? Expanded(child: Container(),) :Expanded(
                            child: itemWidgetBuilder(
                                title: data[i * 3 + 0][widget.fieldName],
                                isSelected: _currentIndex == i * 3 + 0,
                                itemOnTap: (){
                                    if(widget.itemOnTap != null)widget.itemOnTap(index: i * 3 + 0);
                                    _currentIndex = i * 3 + 0;
                                    _tabBarController.select(indexTo: i * 3 + 0);
                                    setState(() {});
                                },
                                fontColor: widget.fontColor,
                                activeColor: widget.activeColor,
                                lineColor: widget.lineActiveColor,
                                fontSize: widget.fontSize,
                                fontWeight: widget.fontWeight,
                                lineHeight: widget.lineHeight,
                                lineWidth: widget.lineWidth,
                                paddingLeft: widget.paddingLeft,
                                paddingRight: widget.paddingRight,
                                paddingMid: widget.paddingMid,
                            )
                        ),
                        i * 3 + 1 >= data.length ? Expanded(child: Container(),) :Expanded(
                            child: itemWidgetBuilder(
                                title: data[i * 3 + 1][widget.fieldName],
                                isSelected: _currentIndex == i * 3 + 1,
                                itemOnTap: (){
                                    if(widget.itemOnTap != null)widget.itemOnTap(index: i * 3 + 1);
                                    _currentIndex = i * 3 + 1;
                                    _tabBarController.select(indexTo: i * 3 + 1);
                                    setState(() {});
                                },
                                fontColor: widget.fontColor,
                                activeColor: widget.activeColor,
                                lineColor: widget.lineActiveColor,
                                fontSize: widget.fontSize,
                                fontWeight: widget.fontWeight,
                                lineHeight: widget.lineHeight,
                                lineWidth: widget.lineWidth,
                                paddingLeft: widget.paddingLeft,
                                paddingRight: widget.paddingRight,
                                paddingMid: widget.paddingMid,
                            ),
                        ),
                        i * 3 + 2 >= data.length ? Expanded(child: Container(),) :Expanded(
                            child: itemWidgetBuilder(
                                title: data[i * 3 + 2][widget.fieldName],
                                isSelected: _currentIndex == i * 3 + 2,
                                itemOnTap: (){
                                    if(widget.itemOnTap != null)widget.itemOnTap(index: i * 3 + 2);
                                    _currentIndex = i * 3 + 2;
                                    _tabBarController.select(indexTo: i * 3 + 2);
                                    setState(() {});
                                },
                                fontColor: widget.fontColor,
                                activeColor: widget.activeColor,
                                lineColor: widget.lineActiveColor,
                                fontSize: widget.fontSize,
                                fontWeight: widget.fontWeight,
                                lineHeight: widget.lineHeight,
                                lineWidth: widget.lineWidth,
                                paddingLeft: widget.paddingLeft,
                                paddingRight: widget.paddingRight,
                                paddingMid: widget.paddingMid,
                            ),
                        ),
                    ],
                ),
            ));
        }
        return items;
    }

    Widget itemWidgetBuilder({String title,bool isSelected,Function itemOnTap,
        Color fontColor,activeColor,lineColor,bgColor, FontWeight fontWeight,
        double fontSize,lineWidth,lineHeight,paddingLeft,paddingRight,paddingMid}){
        return GestureDetector(
            onTap: itemOnTap,
            child: Container(
                padding: EdgeInsets.only(
                    left: paddingLeft,
                    right: paddingRight,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text(
                            title,
                            style: TextStyle(
                                color: isSelected ? activeColor : fontColor,
                                fontSize: fontSize,
                                fontWeight: fontWeight,
                            ),
                        ),
                        SizedBox(height: paddingMid,),
                        Container(
                            height: lineHeight,
                            width: lineWidth,
                            color: isSelected ? lineColor : bgColor,
                        ),
                    ],
                ),
            ),
        );
    }

}

