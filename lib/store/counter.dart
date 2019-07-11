import 'package:flutter/widgets.dart';

class Counter with ChangeNotifier {
  int _value;
  int get value => _value;

  Counter(BuildContext context, this._value);
  void increment() {
    _value++;
    notifyListeners();
  }
}
