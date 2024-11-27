import 'package:flutter/material.dart';

class category extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Book category",style: TextStyle(color: Colors.white)),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration:  BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  height: 150,width: 165 ,
                  child:Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/category.png"),
                      ),
                      Text("Fiction",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 26),)
                    ],
                  ) ,
                ),

            SizedBox(width: 10,),

                Container(
                  decoration:  BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  height: 150,width: 165 ,
                  child:Column( mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/category.png"),
                      ),
                      Text("Crime",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 26),)
                    ],
                  ) ,
                ),


              ],


            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,right: 10.0),
                  child: Container(
                    decoration:  BoxDecoration(
                        color: Colors.brown.shade500,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    height: 150,width: 165 ,
                    child:Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/category.png"),
                        ),
                        Text("Fantacy",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 26),)
                      ],
                    ) ,
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    decoration:  BoxDecoration(
                        color: Colors.brown.shade500,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    height: 150,width: 165 ,
                    child:Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/category.png"),
                        ),
                        Text("Drama",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 26),)
                      ],
                    ) ,
                  ),
                ),



              ],
            ),



          ],


        ),
      )


    );

  }

}