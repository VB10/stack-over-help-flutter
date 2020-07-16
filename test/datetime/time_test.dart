import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

main() {
  final int weeklyCount = 7;

  List<DateTime> weekDateTime = [];
  List<Payment> payments = [];
  test('Craete weekly list', () {
    weekDateTime = List.generate(weeklyCount, (index) => DateTime.now().subtract(Duration(days: index)));

    payments =
        weekDateTime.map((e) => Payment(day: DateFormat(DateFormat.WEEKDAY).format(e), ammount: -e.weekday)).toList();

    payments.sort((pay, pay2) {
      return pay.ammount.compareTo(pay2.ammount);
    });
    payments.sort((pay, pay2) {
      return pay.day.compareTo(pay2.day);
    });

    expect(payments, isNotEmpty);
  });
}

class Payment {
  final String day;
  final int ammount;

  Payment({this.day, this.ammount});

  Map<String, dynamic> toMap() {
    return {
      'day': day,
      'ammount': ammount,
    };
  }

  static Payment fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Payment(
      day: map['day'],
      ammount: map['ammount'],
    );
  }

  String toJson() => json.encode(toMap());

  static Payment fromJson(String source) => fromMap(json.decode(source));
}
