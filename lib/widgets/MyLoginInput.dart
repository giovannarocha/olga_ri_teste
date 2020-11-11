import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';

class MyLoginInput extends StatelessWidget {
  

  final String hint;
  final TextEditingController controller;

  MyLoginInput(this.hint, this.controller); 


  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 18,
          fontFamily: 'FiraSans',
          color: MyColors.myGreyFont
        ),
        border: InputBorder.none,
      ),
    );
  }
}