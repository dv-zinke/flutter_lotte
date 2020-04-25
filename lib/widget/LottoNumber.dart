import 'package:flutter/cupertino.dart';


class LottoNumber extends StatelessWidget {
  final int number;

  LottoNumber({this.number});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: Center(child: Text(number.toString())),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFe0f2f1))
          ),
      ],
    );
  }
}
