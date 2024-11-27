import 'package:book/book%20details.dart';
import 'package:book/bookType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  final List BookType=[
    ["This Week",true,],
    ["This Month",false,],
    ["This Year",false,],

  ];


  void bookTypeSelected(int index){

    setState(() {
      for(int i=0; i< BookType.length;i++){  //loop er maddhome ekta ekta kore select r  unselect hbe
        BookType[i][1]= false;
      }
      BookType[index][1]=true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome to Book world",style: TextStyle(color: Colors.white),),
        ),

        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),

              child:

              TextField(  /// search field create
                decoration:InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Happy reading...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.green),
                    borderRadius: BorderRadius.circular(22),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.brown),
                    borderRadius: BorderRadius.circular(22),
                  ),

                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container( decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(11)),
                      height: 150,width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/podda.jpg"),

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("পদ্মানদীর মাঝি",style: TextStyle(fontSize: 22,color: Colors.white),),
                              ),
                              Text("By Manik Bandopadhay",style: TextStyle(fontSize: 15,color: Colors.white),),
                              SizedBox(height: 20,),
                              InkWell(

                                onTap: (){
                                  Navigator.push(
                                      context,MaterialPageRoute(
                                    builder: (context)
                                    {
                                      return bookdetails(); },

                                  )
                                  );  },

                                child:   Text("Learn More",style: TextStyle(fontSize: 22,color: Colors.teal),),
                                
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container( decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(11)),
                      height: 150,width: 300,
            child: Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/robi1.jpg"),
                ),
                Column( mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("গোরা",style: TextStyle(fontSize: 22,color: Colors.white),),
                    ),
                    Text("By Rabindranath Tagore",style: TextStyle(fontSize: 15,color: Colors.white),),
                    SizedBox(height: 20,),
                    Text("Learn More",style: TextStyle(fontSize: 22,color: Colors.teal),),


                  ],
                )
              ],
            ),
                  
                      

                      
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),

            Container(
              height: 50,
              child: ListView.builder           ///builder diye upr theke data call korlam
                (scrollDirection: Axis.horizontal,
                itemCount: BookType.length,
                itemBuilder: (context,index){
                  return bookType(BookType: BookType[index][0],
                      isSelected: BookType[index][1],
                      onTap: (){
                        bookTypeSelected(index);
                      }
                  );

                },),
            ),

          ],
        )
    );
  }
}