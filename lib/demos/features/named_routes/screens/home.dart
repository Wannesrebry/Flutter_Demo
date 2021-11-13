import 'package:flutter/material.dart';

import 'drawer/drawer_factory.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key, required this.title}): super(key:key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomePage();

}

class _HomePage extends State<HomeScreen>{
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: BasicDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headline4),
            TextButton(onPressed: _resetCounter, child: const Text('Reset'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}