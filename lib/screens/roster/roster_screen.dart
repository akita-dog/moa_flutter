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

  var _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Roster"),
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