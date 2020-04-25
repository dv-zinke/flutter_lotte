import 'package:flutter/cupertino.dart';
import 'package:lotte_flutter/widget/LottoNumber.dart';

class LottoNumberCombination extends StatelessWidget {
  final List<int> lottoNumbers;

  LottoNumberCombination(this.lottoNumbers);



  @override
  Widget build(BuildContext context) {
    return this.getLottoNumbers(lottoNumbers);
  }

  Widget getLottoNumbers(List<int> numbers)
  {
    return new Row(children: numbers.map((item) => new LottoNumber(number: item)).toList());
  }
}



