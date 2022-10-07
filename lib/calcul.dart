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
  int a = int.parse(myControl1.text);
  int b = int.parse(myControl2.text);
  int res1 = (a / gcd_cal(a, b)).round();
  int res2 = (b / gcd_cal(a, b)).round();
  return res1.toString() + " : " + res2.toString();
}
