import 'package:flutter/widgets.dart';

class CounterStore extends ChangeNotifier {
  BuildContext _context;
  int _value = 0;
  int get value => _value;

  CounterStore(BuildContext context) {
    _context = context;
  }

  void increment() {
    _value++;
    notifyListeners();
  }
}
