import 'dart:math';

class GerarNum {
  static int gerarNum(numMax) {
    Random gerarNum = Random();
    return gerarNum.nextInt(numMax);
  }
}
