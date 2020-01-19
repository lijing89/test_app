import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:flutter_test_app/app/routers/routes.dart';
import 'package:fluro/fluro.dart';

export 'package:fluro/fluro.dart';
export 'package:flutter_test_app/app/routers/routes.dart';
export 'package:flutter_test_app/app/resources/app_style.dart';
export 'package:flutter_test_app/app/utils/asset_util.dart';

class Application{
    static Router router;
    static const SplashCacheKey = 'flutter_test_app:splash:int';
    static const AutoLoginTime = 20;//自动登录时间间隔
    static const maxSteps = 40;//自动登录时间间隔
}