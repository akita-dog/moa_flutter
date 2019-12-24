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

  static var _options = ['未完成的', '已完成的', '我发出的', '我执行的', '抄送我的'];
  var _selectVal = _options[0];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("DING"),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            DropdownButton<String>(
              items: _options.map((item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              )).toList(),
              onChanged: (select) {
                setState(() {
                  _selectVal = select;
                });
              },
              value: _selectVal,
            )
          ],
        ),
      )
    );
  }

}