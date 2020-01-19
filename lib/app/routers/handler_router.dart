import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_test_app/app/pages/index_page.dart';
import 'package:flutter_test_app/app/pages/about_page.dart';
import 'package:flutter_test_app/app/pages/contact_page.dart';
import 'package:flutter_test_app/app/pages/example_page.dart';
import 'package:flutter_test_app/app/pages/school_page.dart';
import 'package:flutter_test_app/app/pages/service_page.dart';

//首页
Handler IndexPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return IndexPage();
    }
);
//关于
Handler AboutPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return AboutPage();
    }
);
//联系
Handler ContactPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return ContactPage();
    }
);
//样例
Handler ExamplePageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return ExamplePage();
    }
);

//学院
Handler SchoolPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return SchoolPage();
    }
);
//服务
Handler ServicePageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params){
        return ServicePage();
    }
);

