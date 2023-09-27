import 'dart:js';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constraints/Color.dart';
import '../data/plant_data.dart';
import 'details_page.dart';
import 'category_page.dart' as path;

Widget mainPlantsCard(index, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) => DetailsPage(plant: plants[index]),
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(5, 5),
          ),
        ],
        border: Border.all(color: green, width: 2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: lightGreen,
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.05),
                  blurRadius: 15,
                  offset: const Offset(5, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage(plants[index].imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: CircleAvatar(
              backgroundColor: green,
              radius: 15,
              child: Image.asset(
                'assets/icons/add.png',
                color: white,
                height: 15,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                '${plants[index].name} - \$${plants[index].price.toStringAsFixed(0)}',
                style: TextStyle(
                  color: black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
