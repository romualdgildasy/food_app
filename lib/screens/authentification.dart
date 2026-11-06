import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/function.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/textField.dart';

class Authentification extends StatelessWidget {
  const new({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: height(context) /1.9,
              decoration: BoxDecoration(
                color: Config.colors.primaryColor,
                image: DecorationImage(
                  image: AssetImage(Config.assets.authentification_img),
                  
                ),
              ),
              
            ),
            SizedBox(
                    height: 30
                    ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children :[
                  Text("What is your firstname?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Config.colors.primaryTextColor
                  ),),
                  SizedBox(
                    height: 20
                    ),
                  CTextfield(
                    hint: "Enter your firstname...",
                    fontWeight: FontWeight.w500,
                    ),
                  SizedBox(
                    height: 50
                    ),
                  CButton(
                    height: 20,
                    title: "Let’s Continue"
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}