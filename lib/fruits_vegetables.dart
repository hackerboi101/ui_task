// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:ui_task/Utils/bottom_nav_bar.dart';

class FruitsVegetables {
  late final String name;
  late final String image;
  late final int price;
  late final int old_price;

  bool isTapped = false;
  bool favTapped = false;

  void toggleTapped() {
    isTapped = !isTapped;
  }

  void togglefavTapped() {
    favTapped = !favTapped;
  }
}

class FruitsAndVegetables extends StatefulWidget {
  List<FruitsVegetables> fruits_vegetables = [
    FruitsVegetables()
      ..name = "Broccoli flower"
      ..image = "assets/images/broccoli_flower.png"
      ..price = 60
      ..old_price = 60,
    FruitsVegetables()
      ..name = "Pomegranate"
      ..image = "assets/images/pomegranate.png"
      ..price = 250
      ..old_price = 300,
    FruitsVegetables()
      ..name = "Green Apple"
      ..image = "assets/images/green_apple.png"
      ..price = 160
      ..old_price = 200,
    FruitsVegetables()
      ..name = "Green Capsicum"
      ..image = "assets/images/green_capsicum.png"
      ..price = 150
      ..old_price = 160,
    FruitsVegetables()
      ..name = "Red Capsicum"
      ..image = "assets/images/red_capsicum.png"
      ..price = 160
      ..old_price = 200,
    FruitsVegetables()
      ..name = "Capsicum"
      ..image = "assets/images/capsicum.png"
      ..price = 150
      ..old_price = 160,
    FruitsVegetables()
      ..name = "Broccoli flower"
      ..image = "assets/images/broccoli_flower.png"
      ..price = 60
      ..old_price = 60,
    FruitsVegetables()
      ..name = "Pomegranate"
      ..image = "assets/images/pomegranate.png"
      ..price = 250
      ..old_price = 300,
  ];

  FruitsAndVegetables({super.key});

  @override
  State<FruitsAndVegetables> createState() => _FruitsAndVegetablesState();
}

class _FruitsAndVegetablesState extends State<FruitsAndVegetables> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        centerTitle: true,
        title: Text(
          'Fruits and Vegetables',
          style: TextStyle(fontSize: 17),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '25 Products Found',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.fruits_vegetables.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                ),
                                child: Image.asset(
                                  widget.fruits_vegetables[index].image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                top: 1,
                                right: 1,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.fruits_vegetables[index]
                                          .togglefavTapped();
                                    });
                                  },
                                  icon: widget.fruits_vegetables[index]
                                              .favTapped ==
                                          true
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.green,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey[600],
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.fruits_vegetables[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '৳ ${widget.fruits_vegetables[index].old_price}',
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.red,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '৳ ${widget.fruits_vegetables[index].price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                        ),
                        widget.fruits_vegetables[index].isTapped == true
                            ? Container(
                                height: 40,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            counter--;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: Colors.grey[300],
                                      thickness: 1,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        '$counter',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      color: Colors.grey[300],
                                      thickness: 1,
                                    ),
                                    Container(
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            counter++;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                height: 40,
                                width: double.infinity,
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        widget.fruits_vegetables[index]
                                            .toggleTapped();
                                      });
                                    },
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
