import 'package:fluro/fluro.dart';
import 'package:moa_flutter/routers/router_handler.dart';

class Routers {
  static final String home = "/";
  static final String chat = "chat";

  static void configureRouters(Router router) {
    router.define(home, handler: homeHandler);
    router.define(chat, handler: chatHandler);
  }
}