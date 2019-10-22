import 'package:flutter/widgets.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:flutter_state_test/store/switcher.dart';
import 'package:provider/provider.dart';

Widget provide(Widget widget) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => CounterStore(context)),
      ChangeNotifierProvider(builder: (context) => ToggleStore(context)),
    ],
    child: widget,
  );
}
