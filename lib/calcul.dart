import 'main.dart';

final myContr1 = myControl1;
final myContr2 = myControl2;
int gcd_cal(int a, int b) {
  while (a != b) {
    if (a > b) {
      a -= b;
    } else {
      b -= a;
    }
  }

  return a;
}

String calculate() {
  double a = double.parse(myContr1.text);
  double b = double.parse(myContr2.text);
  int a1 = (a * 1000.0).toInt();
  int b1 = (b * 1000.0).toInt();
  int res1 = (a1 / gcd_cal(a1, b1)).round();
  int res2 = (b1 / gcd_cal(a1, b1)).round();
  return res1.toString() + " : " + res2.toString();
}
