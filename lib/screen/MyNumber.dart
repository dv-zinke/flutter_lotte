

import 'package:flutter/cupertino.dart';
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
    // TODO: implement build
    return Container(

        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            LottoNumberCombination([1,2,3,4,5,6]),
          ],
        )
    );
  }
}
