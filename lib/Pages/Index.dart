import 'package:flutter/material.dart';
import 'package:mrt/Pages/ExitSearch.dart';
// import 'package:mrt/Pages/Setting.dart';
// import 'ExitSearch.dart';
// import 'TripPlanning.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with SingleTickerProviderStateMixin {
  // TabController _tabController; //需要定义一个Controller
  // List tabs = ["行程規劃", "出口查詢", "設定"];
  @override
  void initState() {
    super.initState();
    // 创建Controller
    // _tabController = TabController(length: tabs.length, vsync: this);
  }

  void tripPlanning() {
    print('行程規劃');
  }

  void exitSearch() {
    print('出口查詢');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExitSearch()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('捷運出口'),
          centerTitle: true,
          backgroundColor: Colors.grey,
          // bottom: TabBar(
          //   //生成Tab菜单
          //   controller: _tabController,
          //   tabs: tabs.map((e) => Tab(text: e)).toList(),
          // ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: RaisedButton(
                    onPressed: () => tripPlanning(),
                    child: Text("行程規劃"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: RaisedButton(
                    onPressed: () => exitSearch(),
                    child: Text("出口查詢"),
                  ),
                ),
              ),
            )
          ],
        )
        //  new TabBarView(
        //   controller: _tabController,
        //   children: [
        //     TripPlanning(),
        //     ExitSearch(),
        //     Setting(),
        //   ],
        // ),
        );
  }
}
