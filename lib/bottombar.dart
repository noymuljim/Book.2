import 'package:book/cart.dart';
import 'package:book/category.dart';
import 'package:book/home.dart';
import 'package:book/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget{
  @override
  State<bottombar> createState() => _homeState();
}

class _homeState extends State<bottombar> {
  int index=0;

  final screens =[
    home(),
    category(),
    cart(),
    menu(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.brown.shade200,
          backgroundColor: Colors.grey.shade200,
        ),


        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() => this.index = index),

          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.category),
                label: "Category"),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart),
                label: "Cart"),
            NavigationDestination(
                icon: Icon(Icons.menu),
                label: "Menu"),
          ],
        ),
      ),

    );

  }
}