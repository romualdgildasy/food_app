import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/widgets/customFood.dart';
import 'package:food_app/widgets/foodCart.dart';
import 'package:food_app/widgets/textField.dart';

class Foodpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Foodpage> createState() => _FoodpageState();
}

class _FoodpageState extends State<Foodpage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Image.asset(Config.assets.filter1),
            actions: [
              Column(
                children: [
                  Image.asset(Config.assets.panier),
                  Text("My basket"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Tony, What fruit salad \n combo do you want today?",
                style: Config.styles.titleStyle.copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Expanded(
                    child: CTextfield(
                      hint: "Search for fruit salad combos",
                      prefix: Icon(
                        Icons.search,
                        color: Config.colors.hintColor,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(Config.assets.filter2),
                ],
              ),
              Text(
                "Recommended Combo",
                style: Config.styles.titleStyle.copyWith(fontSize: 24),
              ),
              GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10),
                crossAxisCount: 2,
                childAspectRatio: .9,
                crossAxisSpacing: 20,
                children: [
                  FoodWidget(
                    asset: Config.assets.food_img1,
                    title: "Honey lime combo",
                    price: "2,000",
                    devise: "\$",
                  ),
                ],
              ),
              Customfood(
                titles: ["Hottest", "Popular", "New Combo", "Top"],
                onChanged: (value) {
                  page = value;
                  setState(() {});
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: 10,
                itemBuilder: (_, i) {
                  return FoodWidget(
                    asset: Config.assets.food_img2,
                    title: "Berry mango combo",
                    price: "8,000",
                    devise: "\$",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
