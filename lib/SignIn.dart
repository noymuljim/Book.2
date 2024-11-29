import 'dart:ui';

import 'package:book/Forget.dart';
import 'package:book/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';




class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var emailText=TextEditingController();
    var passwordText=TextEditingController();
    return Scaffold(

      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: ClipPath(
                  clipper: FirstContainer(),
                  child: Container(
                    color: Colors.white,
                    child: Center(child: Opacity(
                        opacity: 0.9,
                        child: Image.asset("assets/images/up.jpg"))),
                  ))
          ),
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Sign In",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30,),
                  Center(child: Container(
                    width: 300,
                    height: 50,
                    child: TextField(
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: "Email",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(color: Colors.brown,width:2 )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(11),
                              borderSide: BorderSide(color: Colors.black87)
                          )
                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    width: 300,
                    child: TextField(
                      controller: passwordText,
                      obscureText: true,
                      decoration: InputDecoration(

                          hintText: "Password",

                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(color: Colors.brown,width: 2)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(color: Colors.black87)
                          )
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder:(context)
                          {
                            return forget();
                          },)
                        );
                      },
                      child: Text("Forget password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal))),
                  SizedBox(height: 28,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,MaterialPageRoute(
                        builder: (context)
                        {
                          return bottombar(); },

                      )
                      );  },



                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color(0xffA78D78),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      //color: Colors.brown,
                      child: Center(child: Text("Sign In",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.white),)),
                    ),
                  ),

                ],
              )
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Container(


                  ),
                ],
              )
          )

        ],
      ),

    );
  }

}
class FirstContainer extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, size.height-30);
    path.quadraticBezierTo(50, size.height-50, size.width/3,size.height-20);
    path.quadraticBezierTo(size.width/2-10, size.height, size.width/2+50,size.height-73);
    path.quadraticBezierTo(size.width/2+100, size.height-150, size.width,size.height-90);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

