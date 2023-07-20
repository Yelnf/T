import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter02/lib/pages/home/index.dart';
import 'package:flutter02/lib/pages/login.dart';
import 'package:flutter02/lib/pages/notfound.dart';
import 'package:flutter02/lib/pages/roomdetail.dart';

import '../pages/register.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';
  static String roomdetail = '/room/:roomid'; //定义路由名称

  static var loginHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static var homeHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return HomePage();
  });
  static var registerHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return RegisterPage();
  });
  static var _notFoundHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return NotFoundPage();
  });
  static var roomdetailHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return RoomDetailPage(
      roomid: params['roomid'][0],
    );
  });
  static void configureRoutes(FluroRouter router) {
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    router.define(register, handler: registerHandler);
    router.notFoundHandler = _notFoundHandler;
    router.define(roomdetail, handler: roomdetailHandler);
  }
}
