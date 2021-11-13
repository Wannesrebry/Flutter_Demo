import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget{
  const SecondScreen({Key? key}): super(key:key);
  static const routeName = '/secondscreen';


  @override
  State<SecondScreen> createState() => _SecondScreen();

}

class _SecondScreen extends State<SecondScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('second screen title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Second screen'),
          ],
        ),
      ),
    );
  }
}