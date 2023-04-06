// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCards extends StatefulWidget {
  final String asset_path;
  final String category_name;
  final int index;

  const CategoryCards({
    super.key,
    required this.asset_path,
    required this.category_name,
    required this.index,
  });

  @override
  State<CategoryCards> createState() => _CategoryCardsState();
}

class _CategoryCardsState extends State<CategoryCards> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(
              () {
                _isTapped = !_isTapped;
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset(widget.asset_path),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(
              () {
                _isTapped = !_isTapped;
              },
            );
          },
          child: Text(
            widget.category_name,
            style: TextStyle(
                color: _isTapped ? Colors.green[700] : Colors.grey[700]),
          ),
        ),
      ],
    );
  }
}
