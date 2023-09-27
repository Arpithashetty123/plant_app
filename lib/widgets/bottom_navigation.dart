import 'package:flutter/material.dart';

import '../home_page.dart';
import '../constraints/Color.dart';
import '../data/bottom_menu.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageController pageController = PageController();
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: child.length,
        controller: pageController,
        onPageChanged: (value) => setState(() => selectIndex = value),
        itemBuilder: (itemBuilder, index) {
          return Container(
            child: child[index],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; bottomMenu.length > i; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageController.jumpToPage(i);
                        selectIndex = i;
                      });
                    },
                    child: Image.asset(
                      bottomMenu[i].imagePath,
                      color: selectIndex == i ? green : grey.withOpacity(0.5),
                    ),
                  )
              ],
            ),
          )),
    );
  }
}

List<Widget> child = [const HomePage(), Container(), Container(), Container()];
