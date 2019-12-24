import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> with AutomaticKeepAliveClientMixin {
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
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0,
            vertical: 4.0,
          ),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
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
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
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
                child: SizedBox(),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 14.0
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 30.0,
                                    child: Text("小王"),
                                  ),
                                  SizedBox(width: 14.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("升级提醒", style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 18.0
                                      ),),
                                      SizedBox(height: 8.0,),
                                      Text("新功能介绍|12月16日职场运动新功能介绍|新功能……", style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.0,
                                      ),)
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text("12月16日", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.0
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                      );
                    },
                    childCount: 12,
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
          ),
        ),
      ),
    );
  }

}