import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_flutter/generated/protobuf/message.pb.dart';
import 'package:moa_flutter/models/message_model.dart';
import 'package:moa_flutter/routers/application.dart';
import 'package:moa_flutter/screens/message/chat_item_widget.dart';

var currentUser = {
  "userid": "akita",
};

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> _messages = List();
  TextEditingController _controller = TextEditingController();

  _buildMessageItem(MessageModel message) {
    bool isMe = message.msgFrom == currentUser["userid"];
    return ChatItemWidget(
      message: message,
      isMe: isMe,
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              controller: _controller,
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                MsgData msg = MsgData();
                MsgContentText text = MsgContentText();
                text.text = _controller.text;
                msg.uid = "111";
                msg.from = currentUser["userid"];
                msg.to = "testto";
                msg.content = text.writeToBuffer();
                msg.type = MsgType.TEXT_SIMPLE.value;
                msg.platform = PlatformType.android;
                _sendMessage(msg);
                _controller.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage(MsgData msgData) {
    Call messageCall = Call();
    messageCall.type = CallType.MESSAGE.value;
    messageCall.content = msgData.writeToBuffer();
    Application.channel.sink.add(messageCall.writeToBuffer());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("秋田狗"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return _buildMessageItem(_messages[index]);
              },
              itemCount: _messages.length,
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }
}