import 'package:flutter/material.dart';
// import 'package:mrt/Pages/ExitSearch.dart';
import 'package:mrt/Pages/Index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Index(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Index(),
      //   '/e': (context) => ExitSearch(),
      //   // '/second': (context) => SecondScreen(),
      // },
    );
  }
}
