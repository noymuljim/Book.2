import 'package:book/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Your Cart",style: TextStyle(color: Colors.white),),
),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Center(
            child: Container( decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(11)),
              height: 100,width: 330,
              child:  Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/podda.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("পদ্মানদীর মাঝি",style: TextStyle(fontSize: 22,color: Colors.white),),
                        SizedBox(height: 15,),

                        Text("300 Tk",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white),),
                      ],

                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          Row( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Order Summary :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 18),),
              ),
SizedBox(width: 30,),
                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Item(s): 01",style: TextStyle(fontSize: 17),),
                      Text("Subtotal: 300tk",style: TextStyle(fontSize: 17)),
                      Text("Shipping fee: 70tk",style: TextStyle(fontSize: 17)), SizedBox(height: 50,),
                      Text("    Total: 370tk",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                    ],
                  ),


            ],
          ),
SizedBox(height: 200,),
          InkWell(

            onTap: (){
              Navigator.push(
                  context,MaterialPageRoute(
                builder: (context)
                {
                  return (payment()); },

              )
              );  },

            child: Container(
              width: 400,
              height: 50,
              color: Colors.teal,
              child: Center(child: Text("Proceed to Checkout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),
            ),
          ),

        ],

      ) ,
    );
  }
}