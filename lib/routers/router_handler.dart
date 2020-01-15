import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:moa_flutter/main.dart';
import 'package:moa_flutter/screens/message/chat_screen.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return MyApp();
  }
);

var chatHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return ChatScreen();
    }
);