import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/new_account.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/password_page.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import '../constraints/style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 25,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                  curve: Curves.linear,
                  speed: const Duration(milliseconds: 100),
                  'Let\'s Plant With Us',
                  textStyle: a1())
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Bring Nature Home', style: a2()),
          SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/images/Asset1.png')),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.greenAccent,
                  backgroundColor: Colors.green.shade900,
                  shape: const RoundedRectangleBorder(),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                },
                child: Text(
                  'Sign In',
                  style: a2(),
                )),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NewAccount(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Text(
                'Create an account',
                style: a2(),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ForgotPassword(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25, left: 10),
              child: Text(
                'Forgot Password?',
                style: a3(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
