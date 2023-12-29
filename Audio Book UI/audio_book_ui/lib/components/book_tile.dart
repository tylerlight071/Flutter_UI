// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  const BookTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          // * Book Cover
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage("lib/assets/images/Prophet_Cover.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),

          SizedBox(height: 10),

          // * Book Title
          Text(
            "The Book Thief",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 5),

          // * Book Author
          Text(
            "Markus Zusak",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
