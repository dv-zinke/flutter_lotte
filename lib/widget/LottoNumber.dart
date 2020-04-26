import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LottoNumber extends StatelessWidget {
  final int number;

  LottoNumber({this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            width: 50,
            height: 50,
            child: Center(
                child: Text(number.toString(),
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 22,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ))),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color(getLottoNumberColor(number)))),
      ],
    );
  }
}

int getLottoNumberColor(number) {
  var colorString;
  if (number < 11)
    colorString = 0xFFfbc400;
  else if (number < 21)
    colorString = 0xFF69c8f2;
  else if (number < 31)
    colorString = 0xFFff7272;
  else if (number < 41)
    colorString = 0xFFaaaaaa;
  else if (number < 46) colorString = 0xFFb0d840;
  return colorString;
}
