import 'dart:math';

class BmiData {
  static double bmiCalculate(double height, int kg) {
    final bmiJoop = kg / pow(height / 100, 2);
    return bmiJoop;
  }

  static String? bmiResult(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Ашыкча салмак';
    } else if (bmiJoop > 18.5) {
      return 'Нормалдуу';
    } else if (bmiJoop < 18.5) {
      return 'Арык';
    }
    return null;
  }

  static String? giveDescription(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Конугуу жасап, кобуроок кыймылданыз!';
    } else if (bmiJoop > 18.5) {
      return 'Сиздин дене салмагыңыз нормалдуу. Азаматсыз! ';
    } else if (bmiJoop < 18.5) {
      return 'Салмак кошууну сунуштайбыз!';
    }
    return null;
  }
}
