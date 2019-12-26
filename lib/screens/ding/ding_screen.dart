import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_flutter/widgets/dropdown_selection_widget.dart';

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
      body: Stack(
        children: <Widget>[
          DropdownSelectionWidget(
            items: _options,
            height: 50.0,
            onChanged: (selectIndex) {
            },
          ),
          Positioned(
            //设置子元素
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepOrange,
                ),
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                )
              ],
            ),
            //设置定位，
            left: 0.0,
            top: 50,
            width: MediaQuery.of(context).size.width,
          ),

        ],
      )
    );
  }

}