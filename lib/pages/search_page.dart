import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45.0,
              width: 300.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade200,
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 45,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/search.png',
                    height: 25,
                  )
                ],
              ),
            ),
            Container(
              height: 45.0,
              width: 45.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.green.shade400,
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade200,
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                'assets/icons/adjust.png',
                height: 25,
              ),
            ),
          ],
        ));
  }
}
