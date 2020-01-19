import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:oktoast/oktoast.dart';

import 'package:flutter_test_app/app/pages/index_page.dart';
import 'package:flutter_test_app/app/resources/app_style.dart';

class App extends StatefulWidget {
    App({Key key}) : super(key: key);
    @override
    _AppState createState() => _AppState();
}

class _AppState extends State<App> {
    @override
    Widget build(BuildContext context) {
        if (Platform.isAndroid) {
            //设置Android头部的导航栏透明
            SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
            SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
        }
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        return OKToast(
            /// set toast style, optional
            child:MaterialApp(
                title: '美腾优坊',
                theme: ThemeData(
                    primaryColorBrightness:Brightness.light,
                    platform: TargetPlatform.iOS,
                    primaryColor: AppStyle.colorPrimary,
                    appBarTheme: AppBarTheme(
                        brightness: Brightness.dark,
                        iconTheme: IconThemeData(
                            color: Colors.white,
                        ),
                        textTheme: TextTheme(
                            title: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            )
                        )
                    ),
                    scaffoldBackgroundColor: Colors.grey[100],
                ),
                home: IndexPage(),
                debugShowCheckedModeBanner: false,
            ),
        );
    }
}
