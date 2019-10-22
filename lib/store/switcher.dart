import 'package:flutter/widgets.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:provider/provider.dart';

class ToggleStore with ChangeNotifier {
  BuildContext _context;
  get counterStore => Provider.of<CounterStore>(_context);

  bool _value = false;
  get value => _value;

  ToggleStore(BuildContext context) {
    _context = context;
  }

  void toggle() {
    _value = !_value;
    counterStore.increment();
    notifyListeners();
  }
}
