import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

import 'package:flutter_application_1/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: MaterialScrollBehavior()
            .copyWith(dragDevices: {PointerDeviceKind.mouse}),
        debugShowCheckedModeBanner: false,
        title: 'Save Plants',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashPage());
  }
}
