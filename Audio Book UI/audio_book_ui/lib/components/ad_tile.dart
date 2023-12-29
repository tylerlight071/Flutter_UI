// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AdTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String subtitle2;
  final String buttonText;
  final String imagePath;
  final double imageHeight;
  final double imageWidth;
  final color;


  const AdTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtitle2,
    required this.buttonText,
    required this.imagePath,
    required this.imageHeight,
    required this.imageWidth,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800])),
                  Text(subtitle,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold)),
                  Text(subtitle2,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepOrange[600],
                      ),
                      child: Center(
                        child: Text(buttonText,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(imagePath, height: imageHeight, width: imageWidth)
            ],
          ),
        ),
      ),
    );
  }
}
