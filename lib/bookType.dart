import 'package:flutter/material.dart';

class bookType extends StatelessWidget {
  final String BookType; // cls er nam r consturctre name SAME HBE NA
  final bool isSelected; //bool constructr for selected clr
  final VoidCallback onTap;


  bookType({
    ///class name
    required this.BookType, //***constructure making
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // now editing all cmponent together
    return


      GestureDetector(

        ///***selection functional korar jonno
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),

          /// constructre call, data pass korbo main page theke
          child: Text(BookType,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                color: isSelected ? Colors.teal : Colors.black),),
        ),
      );
  }
}