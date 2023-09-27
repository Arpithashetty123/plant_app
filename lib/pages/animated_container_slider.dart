import 'package:flutter/cupertino.dart';

import 'main_plant_card.dart';

AnimatedContainer slider(active, index, BuildContext context) {
  double margin = active ? 20 : 30;
  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: mainPlantsCard(index, context),
  );
}
