import 'package:flutter_state_test/store/counter.dart';
import 'package:flutter_state_test/store/switcher.dart';
import 'package:provide/provide.dart';

final providers = Providers()
  ..provide(Provider.function((context) => Counter(context, 0)))
  ..provide(Provider.function((context) => Switcher(context, false)));
