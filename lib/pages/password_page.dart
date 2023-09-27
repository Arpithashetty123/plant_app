import 'package:flutter/material.dart';
import 'package:flutter_application_1/constraints/style.dart';
import 'package:flutter_application_1/pages/splash_page.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade200,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1477554193778-9562c28588c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGxhbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                opacity: 0.2,
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Reset Ur password',
                    style: a4(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Please Enter ur email address",
                    style: a2(),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    makeInput(label: "Email"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(40, 45),
                    shadowColor: Colors.greenAccent,
                    backgroundColor: Colors.green.shade900,
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SplashPage()));
                  },
                  child: Text(
                    "Reset Now",
                    style: a2(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do you have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Sing Up',
                        style: a2(),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green.shade200),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.green.shade400)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
