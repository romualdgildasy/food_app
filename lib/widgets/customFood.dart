import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class Customfood extends StatefulWidget {
  final List<String>? titles;
  final ValueChanged<int>? onChanged;

  const Customfood({Key? key, this.titles, this.onChanged}) : super(key: key);

  @override
  State<Customfood> createState() => _CustomfoodState();
}

class _CustomfoodState extends State<Customfood> {
  List<bool> actived = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    actived = List.generate(widget.titles?.length ?? 0, (index) => false);
    actived[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: (widget.titles ?? []).map((e) {
          int index = (widget.titles ?? []).indexOf(e);
          bool a = actived[index];
          return InkWell(
            onTap: () {
              for (var i = 0; i < (widget.titles ?? []).length; i++) {
                if (i == index) {
                  actived[i] = true;
                } else {
                  actived[i] = false;
                }
              }
              if (widget.onChanged != null)widget.onChanged!(index);
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(right: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    e,
                    style: Config.styles.titleStyle.copyWith(
                      fontWeight: a ? FontWeight.w900 : FontWeight.w400,
                      fontSize: a ? 24 : 16,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    color: a ? Config.colors.primaryColor : Colors.white,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
