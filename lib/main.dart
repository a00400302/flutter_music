import 'package:flutter/material.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: SearchBar(searchHint: "鸡你太美~  baby!", defaultBar: AppBar()),
        body: DefaultTabController(length: 3, child: Scaffold(
          appBar:new TabBar(
            unselectedLabelColor: Colors.blueAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Colors.blueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs:[
            new Tab(text: "网易",),
            new Tab(text: "qq",),
            new Tab(text: "虾米",),
          ]),
          body: TabBarView(children: [
            new Center(child: Text("网易"),),
            new Center(child: Text("qq"),),
            new Center(child: Text("虾米"),),
          ]),
        )),

      ),

    );
  }
}
