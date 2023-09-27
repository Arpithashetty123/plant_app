import 'package:flutter/material.dart';
import 'package:flutter_application_1/constraints/style.dart';
import 'package:flutter_application_1/pages/animated_container_slider.dart';
import 'package:flutter_application_1/pages/category_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';

import 'constraints/Color.dart';
import 'data/categories_model.dart';
import 'data/plant_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 40,
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/menu.png',
            ),
          ),
          actions: [
            Container(
              height: 40.0,
              width: 40.0,
              margin: const EdgeInsets.only(right: 20, top: 10, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.green.shade400,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.green.shade200,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/pro.png'),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              SearchPage(),
              SizedBox(height: 35.0, child: CategoryPage()),
              SizedBox(
                height: 320.0,
                child: PageView.builder(
                  itemCount: plants.length,
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  pageSnapping: true,
                  padEnds: false,
                  onPageChanged: (value) => setState(() => activePage = value),
                  itemBuilder: (itemBuilder, index) {
                    bool active = index == activePage;
                    return slider(active, index, context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: a2(),
                    ),
                    Image.asset(
                      'assets/icons/more.png',
                      color: green,
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 130.0,
                child: ListView.builder(
                  itemCount: populerPlants.length,
                  padding: const EdgeInsets.only(left: 20.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (itemBuilder, index) {
                    return Container(
                      width: 200.0,
                      margin: const EdgeInsets.only(right: 20, bottom: 10),
                      decoration: BoxDecoration(
                        color: lightGreen,
                        boxShadow: [
                          BoxShadow(
                            color: green.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                populerPlants[index].imagePath,
                                width: 70,
                                height: 70,
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    populerPlants[index].name,
                                    style: a2(),
                                  ),
                                  Text(
                                    '\$${populerPlants[index].price.toStringAsFixed(0)}',
                                    style: TextStyle(
                                      color: black.withOpacity(0.4),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Positioned(
                              right: 20,
                              bottom: 15,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 15,
                                child: Image.asset(
                                  'assets/icons/add.png',
                                  color: white,
                                  height: 15,
                                ),
                              )),
                        ],
                      ),
                    );
                  },
                ),
              )
            ])));
  }

  int activePage = 0;
}
