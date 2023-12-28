// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audio_book_ui/components/ad_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // ! App Bar
                Row(
                  children: [
                    // * Profile Pic + Hello User
                    Icon(Icons.person, size: 40),
          
                    SizedBox(width: 10),
          
                    Text("Hello, Tyler!", style: TextStyle(fontSize: 18)),
          
                    Spacer(),
          
                    // * Search Button
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: Icon(Icons.search, size: 30)),
          
                    SizedBox(width: 10),
          
                    // * Notification Button,
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: Icon(Icons.notifications_none_outlined, size: 30)),
                  ],
                ),
          
                SizedBox(height: 30),
          
                //! Advertisement Stuff
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // * #SpecialForYou Text
                    Text("#SpecialForYou",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          
                    // * See All Button
                    Text("See All",
                        style: TextStyle(fontSize: 16, color: Colors.deepOrange)),
                  ],
                ),
          
                SizedBox(height: 20),
          
                // * Ad Banner --> SmoothPageIndicator
                Container(
                  height: 200,
                  child: PageView(
                    children: [
                      AdTile(
                          imagePath: "lib/assets/images/ad_book_1.png",
                          title: "BEST SELLER BOOKS",
                          subtitle: "Get Special Offer!",
                          subtitle2: "Up To 40%!",
                          buttonText: "Claim"),
                      AdTile(
                        imagePath: "lib/assets/images/ad_book_1.png",
                        title: "BEST SELLER BOOKS",
                        subtitle: "Get Special Offer!",
                        subtitle2: "Up To 40%!",
                        buttonText: "Claim",
                      ),
                      AdTile(
                        imagePath: "lib/assets/images/ad_book_1.png",
                        title: "BEST SELLER BOOKS",
                        subtitle: "Get Special Offer!",
                        subtitle2: "Up To 40%!",
                        buttonText: "Claim",
                      ),
                    ],
                  ),
                ),
          
                //! Book List
                // * Top Selling Text
          
                // * See All Button
          
                // * Category List --> ListView.builder
          
                // * Books List --> ListView.builder
          
                //! Author List
                // * Top Authors Text
          
                // * See All Button
          
                // * Author List --> ListView.builder
          
                //! Nav Bar
              ],
            ),
          ),
        ),
      ),
    );
  }
}
