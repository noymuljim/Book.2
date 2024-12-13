import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
backgroundColor: Colors.blueGrey,

     ),
     body: Column(
       children: [
         Stack(
             children: [
           Container(width: 400,height: 200,color: Colors.blueGrey,),
               Column(
                 children: [
                   Center(
                     child: Container(width: 100,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),color: Colors.white,
                         border:Border.all(width: 2,color: Colors.brown) ),
                       child: Image.asset("assets/images/j.png"),
                     ),
                   ),
                   Text("Jimnun",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),


                 ],

               ),


                 ],

         ),
         Column( mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text("Personal Information",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),
             SizedBox(height: 20),
             Text("Phone number:01912863484",style: TextStyle(fontSize: 17,color: Colors.black),),
             SizedBox(height: 40),
             Text("Email: nm.jimnun@gmail.com",style: TextStyle(fontSize: 17,color: Colors.black),),
             SizedBox(height: 40),
             Text("Reset Password",style: TextStyle(fontSize: 17,color: Colors.red),),

           ],
         ),


       ],
     ),

   );
  }

}

