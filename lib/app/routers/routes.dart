import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_test_app/app/routers/handler_router.dart';

class Routes{
  static const String index = '/index';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String example = '/example';
  static const String school = '/school';
  static const String service = '/service';

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return Center(
          child: Text('Not found'),
        );
      },
    );
    router.define(index, handler: IndexPageHandler);
    router.define(about, handler: AboutPageHandler);
    router.define(contact, handler: ContactPageHandler);
    router.define(example, handler: ExamplePageHandler);
    router.define(school, handler: SchoolPageHandler);
    router.define(service, handler: ServicePageHandler);
  }

}