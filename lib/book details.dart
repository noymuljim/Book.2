import 'package:book/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class bookdetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Details",style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset("assets/images/podda.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("পদ্মানদীর মাঝি ঔপন্যাসিক মানিক বন্দ্যোপাধ্যায় রচিত একটি উপন্যাস। প্রকাশকালের আনুমানিক হিসাবে পুতুলনাচের ইতিকথাকে তৃতীয় উপন্যাস ধরলে পদ্মানদীর মাঝি মানিক বন্দ্যোপাধ্যায়ের চতুর্থ উপন্যাস।[১] উপন্যাসটি ১৯৩৪ সাল থেকে পূর্বাশা পত্রিকায় ধারাবাহিকভাবে প্রকাশিত হতে থাকে এবং ১৯৩৬ সালে গ্রন্থাকারে প্রকাশিত হয়।"
                "উপন্যাসটি কলকাতা থেকে সঞ্জয় ভট্টাচার্য সম্পাদিত পূর্বাশা মাসিক পত্রিকায় জ্যৈষ্ঠ ১৩৪১ থেকে শ্রাবণ ১৩৪২ সাল পর্যন্ত ধারাবাহিকভাবে নয় কিস্তি ছাপার পর প্রকাশ বন্ধ হয়ে যায়। এক বছর পর ১৯৩৬-এর মে মাসে গ্রন্থাকারে প্রকাশিত হয়।[১] পূর্বাশা পত্রিকায় ছাপার সময় দেবীগঞ্জ ও আমিনবাড়ির এই দুটি স্থানের নাম ছিল যথাক্রমে গোয়ালন্দ ও রাজবাড়ী।"),
          ),
          Text("Author: মানিক বন্দ্যোপাধ্যায়",style: TextStyle(fontSize: 25,color: Colors.black)),
          Text("Category:উপন্যাস",style: TextStyle(fontSize: 25,color: Colors.black)),
          Text("Rating: 4.6/5",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.brown)),

          Center(
            child: InkWell(

              onTap: (){
                Navigator.push(
                    context,MaterialPageRoute(
                  builder: (context)
                  {
                    return cart(); },

                )
                );  },

              child: Container(width: 150,height: 50,
                decoration: BoxDecoration(color:Color(0xffA78D78),borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text("Add To Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
          ),


        ],
      ),

    );
  }

}