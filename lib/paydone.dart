import 'package:book/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class paydone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: Column(mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Center(
         child: Container(width: 150,height: 150,
           child:   Image.asset("assets/images/right.png"), ),
       ),
       SizedBox(height: 20,),
       Text("We received your payment successfully."),
       Text("Thanks for shopping!"),
       SizedBox(height: 85,),

       InkWell(
       onTap: (){
    Navigator.push(
    context,MaterialPageRoute(
    builder: (context)
    {
    return home(); },

    )
    );  },

         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.brown,),
           height: 50,width: 300,
         child: Center(child: Text("Tap to Continue",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w300,color: Colors.white),)),
         ),
       )
     ],
   ),

 );
  }

}