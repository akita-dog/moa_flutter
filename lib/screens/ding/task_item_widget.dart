import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskItemWidget extends StatefulWidget {
  @override
  _TaskItemWidgetState createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                activeColor: Colors.lightGreen,
                onChanged: (checked) {
                  setState(() {
                    _checked = checked;
                  });
                },
                value: _checked,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 60,
                child: Text("测试一下，测试一下，测试一下，测试一下，测试一下，测试一下，测试一下，测试一下，测试一下，",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0
            ),
            child: Text(
              "12月29日 18:00 截止",
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600]
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "给自己的",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 8.0,),
                Text(
                  "|  12月28日 22:19",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
              bottom: 15.0
            ),
            child: Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.snapchat, color: Colors.grey[600],size: 16.0,),
                    SizedBox(width: 8.0,),
                    Text(
                      "4条动态",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 40.0,),
                Row(
                  children: <Widget>[
                    Icon(Icons.check_circle_outline, color: Colors.grey[600],size: 16.0,),
                    SizedBox(width: 8.0,),
                    Text(
                      "我未完成",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}