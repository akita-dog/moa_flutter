import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownSelectionWidget extends StatefulWidget {
  DropdownSelectionWidget({
    key,
    @required this.items,
    @required this.onChanged,
    @required this.headerKey,
    @required this.parentContext,
    this.index,
    this.height,
  });
  final List<String> items;
  final ValueChanged onChanged;
  final int index;
  final double height;
  final GlobalKey headerKey;
  final BuildContext parentContext;

  @override
  _DropdownSelectionWidgetState createState() => _DropdownSelectionWidgetState();

}

class _DropdownSelectionWidgetState extends State<DropdownSelectionWidget> {
  bool _isExpanded;
  int _selectedIndex;
  OverlayEntry _entry;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.index != null ? widget.index : 0;
    _isExpanded = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        if (!_isExpanded) {
          _show(widget.parentContext);
        } else {
          _hide();
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border(
            bottom: Divider.createBorderSide(context, color: Colors.grey)
          )
        ),
        child: Row(
          key: widget.headerKey,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.items[_selectedIndex]),
            Icon(Icons.keyboard_arrow_down),
          ],
        )
      ),
    );
  }

  void _show(context){
    RenderBox  renderBox = widget.headerKey.currentContext.findRenderObject();
    var headerSize = renderBox.size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double kLeadingHeight = kToolbarHeight;
    _entry = OverlayEntry(
        builder: (context) {
          return Positioned(
              top: statusBarHeight + kLeadingHeight + headerSize.height,
              left: 0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              widget.items[index],
                              style: TextStyle(
                                fontSize: 14.0,
                                color: _selectedIndex == index ? Colors.blue : null
                              ),
                            ),
                            trailing: _selectedIndex == index ? Icon(Icons.done, color: Colors.blue,) : null,
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                              widget.onChanged(index);
                              _hide();
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 0.0,
                            thickness: 0.5,
                            indent: 14.0,
                          );
                        },
                        itemCount: widget.items.length,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _hide();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    )
                  ]
              )
          );
        }
    );
    // 显示
    Overlay.of(context).insert(_entry);
    setState(() {
      _isExpanded = true;
    });
  }

  void _hide() {
    _entry.remove();
    setState(() {
      _isExpanded = false;
    });
  }
}