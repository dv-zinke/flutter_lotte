import 'package:flutter/material.dart';
import 'package:lotte_flutter/screen/MyNumber.dart';

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
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.flash_on),
                    text: '로또 번호 뽑기',
                  ),
                  Tab(
                    icon: Icon(Icons.sync),
                    text: '뭐할까?',
                  ),
                  Tab(
                    icon: Icon(Icons.storage),
                    text: '나의 로또 번호',
                  ),
                ],
              ),
              title: Text('로또 번호 추첨기'),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  child:Container(child: MyNumber()),
                ),
                Container(
                  child: Center(child: Text('page2')),
                ),
                Container(
                  child: Container(child: MyNumber()),
                )
              ],
            ),
          ),
        ));
  }
}
