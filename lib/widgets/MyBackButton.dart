import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';

class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,   
      decoration: BoxDecoration(
        color: MyColors.myBackButtonColor,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Icon(Icons.arrow_back),
    );
  }
}