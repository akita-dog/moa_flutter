
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_flutter/models/message_model.dart';

class ChatItemWidget extends StatelessWidget {
  ChatItemWidget({
    this.message,
    this.isMe
});

  MessageModel message;
  bool isMe;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: 8.0
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            child: Text(
              message.receiveTime.toString(),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              isMe ? Expanded(
                flex: 1,
                child: SizedBox(),
              ) : Expanded(
                flex: 2,
                child: CircleAvatar(
                  radius: 20.0,
                  child: Text(
                    message.msgFrom,
                  ),
                ),
              ),
              Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: isMe ? CrossAxisAlignment.end :CrossAxisAlignment.start,
                    children: <Widget>[
                      isMe ? SizedBox() : Text(
                          message.msgFrom
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(
                          vertical: 8.0
                        ),
                        decoration: BoxDecoration(
                            color: isMe ? Colors.lightBlue[200] : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: isMe ? Radius.circular(12.0) : Radius.circular(4.0),
                              topRight: isMe ? Radius.circular(4.0) : Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            ),
                            border: Border.all(
                                color: isMe ? Colors.blueGrey : Colors.grey,
                                width: 0.5
                            )
                        ),
                        child: Text(
                            message.msgContent
                        ),
                      ),
                    ],
                  )
              ),
              isMe ? Expanded(
                flex: 2,
                child: CircleAvatar(
                  radius: 20.0,
                  child: Text(
                    message.msgFrom,
                  ),
                ),
              ) : Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          )
        ],
      ),
    );
  }

}