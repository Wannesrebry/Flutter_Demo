import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget{
  const TodoApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Todo App",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
    );
  }
}


