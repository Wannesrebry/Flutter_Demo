import 'package:flutter/material.dart';

void main(){
  runApp(const IAmRichApp());
}

class IAmRichApp extends StatelessWidget{
  const IAmRichApp({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Flutter clean demo",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: const IAmRichHomePage(title: "I Am Rich Home Page"),
    );
  }
}

class IAmRichHomePage extends StatefulWidget{
  const IAmRichHomePage({Key? key, required this.title}): super(key:key);
  final String title;

  @override
  State<IAmRichHomePage> createState() => _IAmRichHomePageState();

}

class _IAmRichHomePageState extends State<IAmRichHomePage>{
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