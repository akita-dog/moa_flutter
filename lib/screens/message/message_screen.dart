import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moa_flutter/routers/application.dart';
import 'package:moa_flutter/routers/routers.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("消息"),
        elevation: 0.0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 8.0
              ),
              child: FlatButton(
                color: Colors.grey[300],
                shape: StadiumBorder(),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.grey[600],size: 16.0),
                    SizedBox(width: 10.0,),
                    Text("搜索", style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14.0,
                    ),)
                  ],
                ),
                onPressed: () => debugPrint("搜索！！"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Icon(FontAwesomeIcons.at, size: 20.0,color: Colors.grey[300],),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(FontAwesomeIcons.at, size: 20.0,color: Colors.grey[300],),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(FontAwesomeIcons.at, size: 20.0,color: Colors.grey[300],),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(FontAwesomeIcons.at, size: 20.0,color: Colors.grey[300],),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 14.0
                  ),
                  child: Icon(Icons.more_horiz, size: 20.0,color: Colors.grey[300],),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              height: 0.0,
              color: Colors.grey,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 14.0
                    ),
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Text("小王"),
                    ),
                    title: Text(
                      "升级提醒",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18.0
                      ),
                    ),
                    subtitle: Text(
                      "新功能介绍|12月16日职场运动新功能介绍|新功能……",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "12月16日",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0
                          ),
                        ),
                        CircleAvatar(
                          radius: 12.0,
                          backgroundColor: Colors.red,
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    onTap: () {
                      debugPrint("点击进入聊天");
                      Application.router.navigateTo(context, "${Routers.chat}", transition: TransitionType.cupertino);
                    },
                  );
                },
                childCount: 1,
              )
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 20.0
              ),
              child: Center(
                child: Text("下面就没有了", style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                ),),
              ),
            ),
          )
        ],
      )
    );
  }

}