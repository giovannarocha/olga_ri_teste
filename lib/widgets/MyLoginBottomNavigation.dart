import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';

import 'MyButton.dart';
import 'MyLabel.dart';

class MyLoginBottomNavigation extends StatelessWidget {

  final Function function;
  final String text;

  MyLoginBottomNavigation(this.function, this.text);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomAppBar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 2,
            width: 75,
            child: Container(
              color: MyColors.myYellow,
            ),
          ),
          SizedBox(
            height: 1,
            width: size.width * 1,
            child: Container(
              color: MyColors.myLoginBg,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 24, left: 66, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(child: TextDefault('Cancelar', 12)),
                MyYellowButton(text, '/PageLogin3', function)
              ],
            ),
          )
        ],
      ),
    );
  }


}
