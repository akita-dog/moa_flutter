import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DingPage extends StatefulWidget {
  @override
  _DingPageState createState() => _DingPageState();
}

class _DingPageState extends State<DingPage> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  var _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("DING"),
      ),
      body: Center(
        child: Text("$_count"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count++;
          });
        },
      ),
    );
  }

}