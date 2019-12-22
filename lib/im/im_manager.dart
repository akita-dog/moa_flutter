import 'package:moa_flutter/generated/proto/message.pb.dart';
import 'package:web_socket_channel/io.dart';

class ImManager {
  static ImManager _instance;
  static IOWebSocketChannel _channel;

  static String _serverUrl;
  static Function _onMessage;


  ImManager._() {
    if (_onMessage == null) {
      throw Error.safeToString("undefined function to receive message");
    } else if (_serverUrl != null && _serverUrl.length > 0) {
      _channel = IOWebSocketChannel.connect(_serverUrl);
      _channel.stream.listen(_onMessage);
    } else {
      throw Error.safeToString("server url is empty");
    }
  }

  static ImManager getInstance({String serverUrl, Function onMessage}) {
    if (_instance == null) {
      _serverUrl = serverUrl;
      _onMessage = onMessage;
      _instance = ImManager._();
    }

    return _instance;
  }

  void setServer(serverUrl) {
    _serverUrl = serverUrl;
  }

  void onMessageListener(Function onMessage) {
    _onMessage = onMessage;
  }

  void stop(){
    _channel = null;
  }

  void sendMessage(MsgData msgData) {
    Call messageCall = Call();
    messageCall.type = CallType.MESSAGE;
    messageCall.content = msgData.writeToBuffer();
    _channel.sink.add(messageCall.writeToBuffer());
  }
}