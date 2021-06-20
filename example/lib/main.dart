import 'package:flutter/material.dart';
import 'package:scale_manager/scale_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale Manager Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

const String testImagUrl =
    'https://images.unsplash.com/photo-1624142028466-c9617d7dc71d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaleManager = ScaleManager();
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: ,
          child: Image.network(testImagUrl),
        ),
      ),
    );
  }
}
