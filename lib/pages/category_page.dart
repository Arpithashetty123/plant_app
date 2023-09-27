import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constraints/Color.dart';
import '../data/categories_model.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int selectId = 0;

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < categoryName.length; i++)
          GestureDetector(
            onTap: () {
              setState(() => selectId = categoryName[i].id);
            },
            child: Column(
              children: [
                Text(
                  categoryName[i].name,
                  style: TextStyle(
                    color: selectId == i ? green : black.withOpacity(0.7),
                    fontSize: 15.0,
                  ),
                ),
                if (selectId == i)
                  CircleAvatar(
                    backgroundColor: Colors.green.shade900,
                    radius: 3,
                  ),
              ],
            ),
          )
      ],
    );
  }
}
