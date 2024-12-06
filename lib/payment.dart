import 'package:book/paydone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Payment Method",style: TextStyle(color: Colors.white),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mobile Banking",style: TextStyle(fontSize: 22,color: Colors.black),),
          SizedBox(height: 11,),
            Container(width: 400,height: 60, decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(11),
              boxShadow:[
                BoxShadow(blurRadius: 11,color: Colors.black54)
              ] ),
              child: Image.asset("assets/images/bikash.png"),

            ),

            SizedBox(height: 11,),
            Container(width: 400,height: 60, decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(11),
                boxShadow:[
                  BoxShadow(blurRadius: 11,color: Colors.black54)
                ] ),
              child: Image.asset("assets/images/nogod.png"),

            ),

            SizedBox(height: 11,),
            Container(width: 400,height: 60, decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(11),
                boxShadow:[
                  BoxShadow(blurRadius: 11,color: Colors.black54)
                ] ),
              child: Image.asset("assets/images/r2.png"),

            ),


            SizedBox(height: 220,),

            InkWell(

                onTap: (){
                  Navigator.push(
                      context,MaterialPageRoute(
                    builder: (context)
                    {
                      return paydone(); },

                  )
                  );  },



              child: Container(width: 400,height: 50, decoration: BoxDecoration(color: Color(0xffA78D78),borderRadius: BorderRadius.circular(11),),
                child: Center(child: Text("Confirm",style: TextStyle(fontSize: 22,color: Colors.white),)),

              ),
            ),
          ],
        ),

      ),



    );
  }

}