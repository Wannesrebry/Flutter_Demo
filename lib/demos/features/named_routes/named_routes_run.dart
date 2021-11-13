import 'package:flutter/material.dart';
import 'package:flutter_demo/demos/features/named_routes/screens/home.dart';
import 'package:flutter_demo/demos/features/named_routes/screens/second_screen.dart';

void main(){
  runApp(const NamedRoutesApp());
}

class NamedRoutesApp extends StatelessWidget{
  const NamedRoutesApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Todo App",
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
      home: const HomeScreen(title: 'Named Routes Example',),
      routes: <String, WidgetBuilder>{
        SecondScreen.routeName: (BuildContext context) => const SecondScreen(),
      },
    );
  }
}
