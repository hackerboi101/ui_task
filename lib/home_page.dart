// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ui_task/Utils/bottom_nav_bar.dart';
import 'package:ui_task/Utils/category_card.dart';
import 'package:ui_task/fruits_vegetables.dart';

class Categories {
  late final String category_name;
  late final String category_image;
  late final String category_description;
}

class HomePage extends StatefulWidget {
  List<Categories> categories = [
    Categories()
      ..category_name = "Fruits and Vegetables"
      ..category_image = "assets/images/fruits_and_vegetables.png"
      ..category_description =
          "Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot",
    Categories()
      ..category_name = "Grocery and Staples"
      ..category_image = "assets/images/grocery_and_staples.png"
      ..category_description =
          "Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot",
    Categories()
      ..category_name = "Household Needs"
      ..category_image = "assets/images/household_needs.png"
      ..category_description =
          "Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot",
    Categories()
      ..category_name = "Mans and Womens Wear"
      ..category_image = "assets/images/mans_and_womens_wear.png"
      ..category_description =
          "Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot",
    Categories()
      ..category_name = "Foot ware"
      ..category_image = "assets/images/foot_ware.png"
      ..category_description =
          "Lorem ipsum diord sit amit, sjjrk aosjet constectia adiposimg sot",
  ];

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        centerTitle: true,
        title: Container(
          height: 80,
          width: 80,
          child: Image.asset('assets/images/logo.png'),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/shopping-cart.png',
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CategoryCards(
                      asset_path: 'assets/images/all.png',
                      category_name: 'All',
                      index: 0,
                    ),
                    CategoryCards(
                      asset_path: 'assets/images/fruits.png',
                      category_name: 'Fruits',
                      index: 1,
                    ),
                    CategoryCards(
                      asset_path: 'assets/images/vegetables.png',
                      category_name: 'Vegetables',
                      index: 2,
                    ),
                    CategoryCards(
                      asset_path: 'assets/images/fish.png',
                      category_name: 'Fish',
                      index: 3,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.categories.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: EdgeInsets.only(top: 5.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                              widget.categories[index].category_image),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.categories[index].category_name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                widget.categories[index].category_description,
                                maxLines: null,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FruitsAndVegetables(),
                                ),
                              );
                            }
                          },
                          icon: Icon(Icons.arrow_forward_ios),
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
