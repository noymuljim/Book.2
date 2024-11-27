import 'dart:async';
import 'package:flutter/material.dart';
import 'GetStarted.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=>Getstarted(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.brown.shade700,   //7D5024
        child: Center(
          child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/logo1.png')
          ),
        ),
      ),
    );
  }
}

