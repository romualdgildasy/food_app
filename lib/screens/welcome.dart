import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/function.dart';
import 'package:food_app/widgets/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                  image: AssetImage(Config.assets.welcome_img),
                  
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
                  Text("Get The Freshest Fruit Salad Combo",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Config.colors.primaryTextColor
                  ),),

                  Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Config.colors.subtitleColor
                  )),
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