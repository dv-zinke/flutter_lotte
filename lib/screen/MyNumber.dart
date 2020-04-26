import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotte_flutter/widget/LottoNumber.dart';
import 'package:lotte_flutter/widget/LottoNumberCombination.dart';

class MyNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNumberState();
  }
}

class _MyNumberState extends State<MyNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LottoNumberCombination([1, 21, 33, 45, 11, 6]),
            Icon(
              Icons.add,
              color: Colors.grey,
              size: 30.0,
            ),
            LottoNumber(number: 1)
          ],
        )
      ],
    ));
  }
}
