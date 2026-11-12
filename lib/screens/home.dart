import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/widgets/button.dart';
import 'package:food_app/widgets/customFood.dart';
import 'package:food_app/widgets/foodCart.dart';
import 'package:food_app/widgets/textField.dart';

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
              title: "Click Me" ,
              color: Colors.transparent,
              titleColor: Config.colors.primaryColor,
              border: true,
            ),
            CTextfield(hint: "Enter your text here..."
            ),
            SizedBox(height: 20
            ),
            FoodWidget(
              title: "Honey lime combo",
              devise: "\$",
              price: "2,000",
              asset: Config.assets.food_img,
            ),
            Customfood(
              titles: [
                "Hottest",
                "Popular",
                "New Combo",
                "Top"
              ],
            )
          ],
        ),
      ),
    );
  }
}