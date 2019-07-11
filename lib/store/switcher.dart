import 'package:flutter/widgets.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:provide/provide.dart';

class Switcher with ChangeNotifier {
  BuildContext _context;
  bool _value;
  Counter _counterStore; // This is a singleton form global scope
  get value => _value;

  Switcher(BuildContext context, bool value) {
    this
      .._context = context
      .._value = value
      // provide with counter for cross model usage
      .._counterStore = Provide.value<Counter>(_context);
  }

  void toggle() {
    _value = !_value;
    _counterStore.increment();
    notifyListeners();
  }
}
