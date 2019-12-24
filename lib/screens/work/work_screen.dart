import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        elevation: 0.0,
      ),
      body:CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Swiper(
                itemCount: 4,
                itemBuilder: (context, index){
                  return Image.network(
                    "http://via.placeholder.com/350x150",
                    fit: BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.black12,
                      activeColor: Colors.black38
                  ),
                ),
                scrollDirection: Axis.horizontal,
                autoplay: true,
                onTap: (index) {
                  debugPrint('点击了$index');
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 40.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.bullhorn, size: 10.0, color: Colors.blue,),
                        SizedBox(width: 8.0,),
                        Text("公告",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.0
                          ),
                        ),
                      ],
                    ),
                    Text("查看更多", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 40.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("智能人事", style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0
                    ),),
                    Text("收起", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: _getApps()
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 40.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("智能人事", style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0
                    ),),
                    Text("收起", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _getApps()
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 40.0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("智能人事", style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0
                    ),),
                    Text("收起", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _getApps()
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getApps(){
    return ["考勤打卡","考勤打卡","考勤打卡","考勤打卡","考勤打卡","考勤打卡"].map((item) {
      return Column(
        children: <Widget>[
          FlatButton(
            child: Container(
              child: Icon(Icons.location_on, color: Colors.white,),
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(12.0))
              ),
            ),
            onPressed: () => debugPrint("点击应用"),
          ),
          SizedBox(height: 8.0,),
          Text(item, style: TextStyle(
              fontSize: 14.0
          ),)
        ],
      );
    }).toList();
  }

}