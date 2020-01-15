import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_flutter/screens/ding/task_item_widget.dart';
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
  int _selectVal = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("DING"),
      ),
      body: Column(
        children: <Widget>[
          DropdownSelectionWidget(
            parentContext: context,
            headerKey: GlobalKey(),
            items: _options,
            height: 40,
            onChanged: (index) {
              debugPrint("选择了$index");
              _selectVal = index;
            },
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Container(
                child: TaskItemWidget(),
              ),
              separatorBuilder: (context, index) {
                return Divider(height: 0.0,);
              },
              itemCount: 20,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: (){
          debugPrint("新增");
        },
      ),
    );
  }

}