import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
backgroundColor: Colors.blueGrey,

     ),
     body: Stack(
         children: [
       Container(width: 400,height: 200,color: Colors.blueGrey,),
           Column(
             children: [
               Center(
                 child: Container(width: 70,height: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),color: Colors.white,
                     border:Border.all(width: 2,color: Colors.brown) ),
                   child: Image.asset("assets/images/jimnun.jpg"),
                 ),
               ),
               Text("Jimnun",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
             ],
           ),
           

             ]
     )
   );
  }

}

