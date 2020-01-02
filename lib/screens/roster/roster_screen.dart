import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RosterPage extends StatefulWidget {
  @override
  _RosterPageState createState() => _RosterPageState();
}

class _RosterPageState extends State<RosterPage> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("通讯录"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 4.0,
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
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('常用联系人'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("点击了选项");
            },
          ),
          Divider(indent: 86.0, color: Colors.grey[200], height: 0.0,),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.group),
              title: Text('我的群组'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("点击了选项");
            },
          ),
          Divider(indent: 86.0, color: Colors.grey[200], height: 0.0,),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.public),
              title: Text('公众号'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("点击了选项");
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: Colors.grey[200],
          ),
          ListTile(
            leading: FlutterLogo(size: 36.0),
            title: Text(
              '我的公司',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(indent: 86.0, color: Colors.grey[200], height: 0.0,),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('我的好友'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("点击了选项");
            },
          ),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('我的好友'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("点击了选项");
            },
          ),
          FlatButton(
            child: ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('企业主页'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            onPressed: () {
              debugPrint("企业主页");
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 10.0,
            color: Colors.grey[200],
          ),
          ListTile(
            leading: FlutterLogo(size: 36.0),
            title: Text(
              '关联公司1',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          Divider(indent: 86.0, color: Colors.grey[200], height: 0.0,),
          ListTile(
            leading: FlutterLogo(size: 36.0),
            title: Text(
              '关联公司2',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      )
    );
  }

}