import 'package:flutter/widgets.dart';

class CounterStore with ChangeNotifier {
  int _value;
  int get value => _value;

  CounterStore(BuildContext context, this._value);

  void increment() {
    _value++;
    notifyListeners();
  }
}
