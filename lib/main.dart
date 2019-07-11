import 'package:flutter/material.dart';
import 'package:flutter_state_test/store/counter.dart';
import 'package:flutter_state_test/store/switcher.dart';
import 'package:provide/provide.dart';
import 'store/provide.dart';

void main() {
  runApp(ProviderNode(providers: providers, child: MyApp()));
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
    final currentSwitcher = Provide.value<Switcher>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Provide<Counter>(
                builder: (context, child, counter) => Text(
                      '${counter.value}',
                      style: Theme.of(context).textTheme.display1,
                    )),
            Provide<Switcher>(
              builder: (context, child, switcher) => Text(
                '${switcher.value ? 'Fuck' : 'Shit'}',
                style: Theme.of(context).textTheme.display1,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // currentCounter.increment();
          currentSwitcher.toggle();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
