import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownSelectionWidget extends StatefulWidget {
  DropdownSelectionWidget({
    key,
    @required this.items,
    @required this.onChanged,
    this.index,
    this.height,
  });
  final List<String> items;
  final ValueChanged onChanged;
  final int index;
  final double height;

  @override
  _DropdownSelectionWidgetState createState() => _DropdownSelectionWidgetState();

}

class _DropdownSelectionWidgetState extends State<DropdownSelectionWidget> {
  bool _isExpanded;
  int _selectedIndex;

  var _menuList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.index != null ? widget.index : 0;
    _isExpanded = false;
    var list = widget.items.map((item) {
      return Text(item);
    }).toList();
    _menuList  = ListTile.divideTiles(tiles: list);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            height: widget.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

}