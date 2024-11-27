import 'package:book/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(LeatsRead());
}
class LeatsRead extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.brown.shade800)
      ),
      home: splash(),
    );
  }
}
