import 'package:flutter/widgets.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:provide/provide.dart';

class ToggleStore with ChangeNotifier {
  BuildContext _context;
  CounterStore _counterStore; // This is a singleton form global scope
  
  bool _value;
  get value => _value;

  ToggleStore(BuildContext context, bool value) {
    this
      .._context = context
      .._value = value
      // provide with counter for cross model usage
      .._counterStore = Provide.value<CounterStore>(_context);
  }

  void toggle() {
    _value = !_value;
    _counterStore.increment();
    notifyListeners();
  }
}
