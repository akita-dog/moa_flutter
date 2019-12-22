import 'package:flutter/material.dart';
import 'package:moa_flutter/screens/ding/ding_screen.dart';
import 'package:moa_flutter/screens/message/message_screen.dart';
import 'package:moa_flutter/screens/mine/mine_screen.dart';
import 'package:moa_flutter/screens/roster/roster_screen.dart';
import 'package:moa_flutter/screens/work/work_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _pages = [
    MessagePage(),
    DingPage(),
    WorkPage(),
    RosterPage(),
    MinePage()
  ];
  var _tabBarItems = [
    BottomNavigationBarItem(title: Text("消息", style: TextStyle(color: Colors.white70),), icon: Icon(Icons.message)),
    BottomNavigationBarItem(title: Text("DING", style: TextStyle(color: Colors.white70),), icon: Icon(Icons.assignment_turned_in)),
    BottomNavigationBarItem(title: Text("工作", style: TextStyle(color: Colors.white70),), icon: Icon(Icons.apps)),
    BottomNavigationBarItem(title: Text("通讯录", style: TextStyle(color: Colors.white70),), icon: Icon(Icons.people)),
    BottomNavigationBarItem(title: Text("我的", style: TextStyle(color: Colors.white70),), icon: Icon(Icons.person)),
  ];
  var _pageController = PageController();
  var _pageIndex = 0;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey[800],
      ),
      home: Scaffold(
        body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: _onPageChanged,
          itemBuilder: (context, index) => _pages[index],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.grey[800],
            items: _tabBarItems,
            currentIndex: _pageIndex,
            onTap: (index) => _pageController.jumpToPage(index),
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(
              color: Colors.white70,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.white
            ),
            unselectedFontSize: 10.0,
          ),
        )
      ),
    );
  }

  void _onPageChanged(index) {
    setState(() {
      _pageIndex = index;
    });
  }
}
