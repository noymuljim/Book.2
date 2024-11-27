import 'package:book/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class forget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: InkWell(

          onTap: (){
            Navigator.push(
                context,MaterialPageRoute(
              builder: (context)
              {
                return home(); },

            )
            );  },

          child: Container(
            width: 200,
            height: 100,
            color: Colors.green,
            child: Center(child: Text("Tap To continue",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),
      ),
    );
  }

}