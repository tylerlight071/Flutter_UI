// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String categoryName;

  const CategoryList({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        height: 40,
        width: 95,
        child: FloatingActionButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.deepOrange,
          onPressed: () {},
          child: Text(
            categoryName,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
