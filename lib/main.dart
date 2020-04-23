import 'package:flutter/material.dart';
import 'package:lotte_flutter/widget/BottomBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "로또 번호 추첨기",
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  child: Center(child: Text('page1')),
                ),
                Container(
                  child: Center(child: Text('page2')),
                ),
                Container(
                  child: Center(child: Text('page3')),
                )
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        ));
  }
}
