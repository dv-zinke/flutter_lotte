import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotte_flutter/widget/LottoNumber.dart';
import 'package:lotte_flutter/widget/LottoNumberCombination.dart';
import 'package:http/http.dart' as http;
class MyNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNumberState();
  }
}

class _MyNumberState extends State<MyNumber> {

  List<int> _response;
  int _bonusNumber;
  void test() async {
    String url = 'https://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=909';
    var response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);
    setState(() {
      print(data);
      _response = [data['drwtNo1'],data['drwtNo2'],data['drwtNo3'],data['drwtNo4'],data['drwtNo5'],data['drwtNo6']];
      print(_response);
      _bonusNumber = data['bnusNo'];
    });
  }

  @override
  void initState() {
    print(_response.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(height: 100),
        getLottoNumberSet([1, 2, 3, 4, 5, 6], 1),
        SizedBox(height: 20),
        getLottoNumberSet([11, 21, 31, 35, 1, 41], 1),
        getLottoNumberSet([12, 32, 5, 23, 45, 6], 1),
        getLottoNumberSet([1, 2, 3, 4, 5, 6], 1),
        getLottoNumberSet([1, 2, 3, 4, 5, 6], 1),
        getLottoNumberSet([1, 2, 3, 4, 5, 6], 1),
        getLottoNumberSet([1, 2, 3, 4, 5, 6], 1)

      ],
    ));
  }
}


Widget getLottoNumberSet(lottoNumberList, bonusNumber) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      LottoNumberCombination(lottoNumberList),
      Icon(
        Icons.add,
        color: Colors.grey,
        size: 30.0,
      ),
      LottoNumber(number: bonusNumber)
    ],
  );
}
