import 'package:flutter/material.dart';

class CommitButton extends StatelessWidget {
    final String title;
    final GestureTapCallback callBack;
    final double height;
    final double width;
    final double fontSize;
    final Color fontColor;
    final Color bgColor;

    CommitButton({
        String title,Function callBack,double height,width,fontSize,
        Color bgColor,fontColor,
    }) :    assert(callBack != null),
            title = title??'',
            callBack = callBack,
            height = height??100.0,
            width = width??50.0,
            fontSize = fontSize??16.0,
            bgColor = bgColor??Colors.black,
            fontColor = fontColor??Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: callBack,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10.0),
//            border: Border.all(
//              color: AppStyle.colorGrey,
//              width: 1,
//            )
            ),
            alignment: Alignment.center,
            child: Text(
                title,
                style: TextStyle(
                    color: fontColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                ),
            ),
        ),
    );
  }
}
