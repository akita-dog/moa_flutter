import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownSelectionWidget extends StatefulWidget {
  DropdownSelectionWidget({
    key,
    @required this.items,
    @required this.onChanged,
    @required this.headerKey,
    this.index,
    this.height,
  });
  final List<String> items;
  final ValueChanged onChanged;
  final int index;
  final double height;
  final GlobalKey headerKey;

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
          _show(context);
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
    OverlayState state = Overlay.of(context);
    RenderBox  renderBox = widget.headerKey.currentContext.findRenderObject();
    var headerSize = renderBox.size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double kLeadingWidth = kToolbarHeight;
    _entry = OverlayEntry(
        builder: (context) {
          return Positioned(
              top: headerSize.height + statusBarHeight + kLeadingWidth,
              left: 0,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              _selectedIndex = index;
                            });
                            widget.onChanged(index);
                            _hide();
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: widget.height,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.0
                                ),
                                child: _selectedIndex == index ? Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(widget.items[index], style: TextStyle(color: Colors.blue, fontSize: 12.0, decoration: TextDecoration.none),),
                                    Icon(Icons.check, color: Colors.blue,),
                                  ],
                                ) :
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(widget.items[index], style: TextStyle(color: Colors.black54, fontSize: 12.0, decoration: TextDecoration.none),),
                                  ],
                                ),
                              )
                          ),
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
    state.insert(_entry);
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