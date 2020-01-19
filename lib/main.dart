import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_test_app/app/utils/application.dart';
import 'package:flutter_test_app/app/app.dart';

void main() async {
  /// 注册路由
  final Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  /// 运行
  runApp(App());

}
