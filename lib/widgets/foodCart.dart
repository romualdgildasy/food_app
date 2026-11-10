import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/config/config.dart';

class FoodWidget extends StatelessWidget {
  final String? title, devise, price, asset;
  final VoidCallback? onTap, onFav, onAdd;

  const FoodWidget({
    Key? key,
    this.title,
    this.devise,
    this.price,
    this.asset,
    this.onTap,
    this.onFav,
    this.onAdd,
  }) : super(key: key);

  @override
Widget build(BuildContext context) {
  return Container(
    height: 200,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: .1),
          blurRadius: 10,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 110,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          height: 90,
                          width: 90,
                          child: ClipOval(
                            child: Image.asset(
                              asset ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints.tightFor(
                          width: 32,
                          height: 32,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          elevation: 3,
                          shadowColor: Colors.black.withValues(alpha: .12),
                        ),
                        icon: FaIcon(
                          FontAwesomeIcons.heart,
                          size: 18,
                          color: Config.colors.primaryColor,
                        ),
                        onPressed: onFav,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title ?? "",
                style: Config.styles.titleStyle.copyWith(fontSize: 15),
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: devise ?? "",
                          style: TextStyle(
                            color: Config.colors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: price,
                          style: TextStyle(
                            color: Config.colors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: Config.colors.primaryColor.withValues(alpha: .2),
                      shape: BoxShape.circle,
                      border: Border.all(color: Config.colors.primaryColor),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: onAdd,
                      icon: Icon(
                        Icons.add,
                        size: 18,
                        color: Config.colors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}