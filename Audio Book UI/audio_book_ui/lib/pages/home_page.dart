// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audio_book_ui/components/ad_tile.dart';
import 'package:audio_book_ui/components/book_tile.dart';
import 'package:audio_book_ui/components/category_list.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //  * PageView Controller
    final pageController = PageController();

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
                        child:
                            Icon(Icons.notifications_none_outlined, size: 30)),
                  ],
                ),

                SizedBox(height: 30),

                //! Advertisement Stuff
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // * #SpecialForYou Text
                    Text("#SpecialForYou",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),

                    // * See All Button
                    Text("See All",
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepOrange)),
                  ],
                ),

                SizedBox(height: 20),

                // * Ad Banner --> SmoothPageIndicator
                // ignore: sized_box_for_whitespace
                Container(
                  height: 200,
                  child: PageView(
                    controller: pageController,
                    children: [
                      AdTile(
                        imagePath: "lib/assets/images/ad_book_1.png",
                        imageHeight: 120,
                        imageWidth: 120,
                        title: "BEST SELLER BOOKS",
                        subtitle: "Get Special Offer!",
                        subtitle2: "Up To 40%!",
                        buttonText: "Claim",
                        color: Colors.grey[200],
                      ),
                      AdTile(
                        imagePath: "lib/assets/images/ad_book_2.png",
                        imageHeight: 110,
                        imageWidth: 110,
                        title: "NEW ARRIVALS",
                        subtitle: "Check out the latest books!",
                        subtitle2: "Up To 30%!",
                        buttonText: "Explore",
                        color: Colors.deepOrange[200],
                      ),
                      AdTile(
                        imagePath: "lib/assets/images/ad_book_3.png",
                        imageHeight: 130,
                        imageWidth: 130,
                        title: "LIMITED TIME OFFER",
                        subtitle: "Exclusive books on sale!",
                        subtitle2: "Up To 50%!",
                        buttonText: "Shop Now",
                        color: Colors.deepPurple[200],
                      ),
                    ],
                  ),
                ),
                // * SmoothPageIndicator
                SizedBox(height: 10),

                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.grey.shade300,
                    activeDotColor: Colors.deepOrange,
                  ),
                ),
                SizedBox(height: 20),
                //! Book List
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // * Top Selling Text
                    Text("Top Selling",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    // * See All Button
                    Text("See All",
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepOrange)),
                  ],
                ),

                SizedBox(height: 20),

                // ignore: sized_box_for_whitespace
                Container(
                  // * Category List --> ListView
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryList(
                        categoryName: "All",
                      ),
                      CategoryList(
                        categoryName: "Fiction",
                      ),
                      CategoryList(
                        categoryName: "Romance",
                      ),
                      CategoryList(
                        categoryName: "Horror",
                      ),
                      CategoryList(
                        categoryName: "Comedy",
                      ),
                      CategoryList(
                        categoryName: "Drama",
                      ),
                    ],
                  ),
                ),
                 // * Books List --> ListView
                // ignore: sized_box_for_whitespace
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [BookTile(
                      
                    )],
                  ),
                ),

                //! Nav Bar
              ],
            ),
          ),
        ),
      ),
    );
  }
}
