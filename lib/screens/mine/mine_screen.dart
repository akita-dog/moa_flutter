import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  var _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Card(
              child: Container(
                height: 200.0,
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "秋田狗",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "开发岗",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54
                            ),
                          ),
                          Text(
                            "程序猿",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        child: Text(
                          "秋田狗",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        radius: 30.0,
                        backgroundColor: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: Colors.grey[200],
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.redAccent,),
            title: Text('红包'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint("红包");
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: Colors.grey[200],
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.redAccent,),
            title: Text('收藏'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint("点击了选项");
            },
          ),
          Divider(indent: 86.0, color: Colors.grey[200], height: 0.0,),
          ListTile(
              leading: Icon(Icons.star, color: Colors.redAccent,),
              title: Text('帮助'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                debugPrint("点击了选项");
              }
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: Colors.grey[200],
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.redAccent,),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint("点击了选项");
            },
          ),
        ],
      ),
    );
  }

}