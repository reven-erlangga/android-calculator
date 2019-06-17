import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/overview.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
        title: 'Calculator',
        debugShowCheckedModeBanner: false,
        home: new Overview()
    );
  }
}