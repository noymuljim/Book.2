import 'package:book/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Image.asset('assets/images/logoo2.png'),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  child: ListView(
                    children: [
                      SizedBox(
                          height: 30
                      ),
                      Center(child: Text("Welcome to",style: TextStyle(fontSize: 25,color:Colors.brown.shade500,fontWeight: FontWeight.w400),)),
                      Center(child: Text("Let's Read!",style: TextStyle(fontSize: 48,color:Colors.brown.shade500),)),
                      SizedBox(height: 140
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,MaterialPageRoute(
                              builder: (context)
                              {
                                return SignIn(); },

                            )
                            );  },

                          child: Container(
                            width: 324,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffA78D78),
                                borderRadius: BorderRadius.circular(51)
                            ),
                            child: Center(child: Text("Get Started",style: TextStyle(fontSize: 19,color:Colors.white,fontWeight: FontWeight.w500),)),
                          ),
                        ),
                      )
                    ],
                  )

              )
          )
        ],
      ),
    );
  }

}