import 'package:flutter/material.dart';
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
    final int initIndex;
    final FontWeight fontWeight;
    final EdgeInsets padding;
    CustomAppbar({
        @required this.width,
        @required this.height,
        this.lineHeight=2.0,
        this.lineWidth=30.0,
        this.paddingLeft=5.0,
        this.paddingRight=5.0,
        this.paddingMid=5.0,
        this.fontSize=13.0,
        this.controller,
        this.appbarController,
        this.fontColor=Colors.black,
        this.activeColor=Colors.red,
        this.lineActiveColor=Colors.red,
        this.bgColor=Colors.white,
        this.initIndex=0,
        this.fontWeight=FontWeight.w400,
        @required this.itemOnTap,
        @required this.data,
        @required this.fieldName,
        this.padding= const EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 10,
        ),
    });
    @override
    _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {

    ScrollController _controller;
    CustomAppbarController _tabBarController;
    int _currentIndex = 0;

    _onScrollController(){
        _tabBarController.scroll();
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
            height: widget.height,
            width: widget.width,
            color: widget.bgColor,
            padding: widget.padding,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: buildWidgets(widget.data??[]),
            ),
        );
    }

    List<Widget> buildWidgets(List data){
        List<Widget> items = [];
        if(data.isEmpty)return items;
        for(int i = 0 ; i < data.length ; i ++){
            items.add(itemWidgetBuilder(
                title: data[i][widget.fieldName],
                isSelected: _currentIndex == i,
                itemOnTap: (){
                    if(widget.itemOnTap != null)widget.itemOnTap(index: i);
                    _currentIndex = i;
                    _tabBarController.select(indexTo: i);
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

