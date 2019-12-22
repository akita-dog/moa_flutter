import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> with AutomaticKeepAliveClientMixin {
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
        title: Text("Work"),
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