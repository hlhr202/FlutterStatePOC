import 'package:flutter/material.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:flutter_state_test/store/providers.dart';
import 'package:flutter_state_test/store/switcher.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(provide(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final counterStore = Provider.of<CounterStore>(context);
    final toggleStore = Provider.of<ToggleStore>(context);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(counterStore.value.toString()),
            Text(toggleStore.value.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggleStore.toggle();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
