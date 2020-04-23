import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text("홈"),
            ),
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text("홈"),
            ),
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text("홈"),
            )
          ],
        ),
      ),
    );
  }
}
