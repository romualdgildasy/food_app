import 'package:flutter/material.dart';
import 'package:food_app/widgets/button.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Welcome to the Home Screen"),
            CButton(
              title: "Click Me" 
            ),
          ],
        ),
      ),
    );
  }
}