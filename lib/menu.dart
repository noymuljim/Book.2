import 'package:book/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
      Row(
      children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person,color: Colors.yellow,size: 30,),
    ),
    InkWell(
    onTap: (){
    Navigator.push(
    context,MaterialPageRoute(
    builder: (context)
    {
    return profile(); },

    )
    );  },

            child: Text("Profile",style: TextStyle(fontSize: 20),))
    ],
    ),

         Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.language,color: Colors.green,size: 30,),
             ),Text("Language",style: TextStyle(fontSize: 20),)
           ],
         ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications,color: Colors.orange,size: 30,),
              ),Text("Notofication",style: TextStyle(fontSize: 20),)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.dark_mode,color: Colors.black,size: 30,),
              ),Text("Dark mood",style: TextStyle(fontSize: 20),)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_box_outlined,color: Colors.teal,size: 30,),
              ),Text("About us",style: TextStyle(fontSize: 20),)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.download,color: Colors.teal,size: 30,),
              ),Text("Downloads",style: TextStyle(fontSize: 20),)
            ],
          )
          , Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.privacy_tip,color: Colors.red,size: 30,),
              ),Text("Privacy",style: TextStyle(fontSize: 20),)
            ],
          )
          , Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.help,color: Colors.green,size: 30,),
              ),Text("Help",style: TextStyle(fontSize: 20),)
            ],
          ),
        ],
      ),
    );
  }

}