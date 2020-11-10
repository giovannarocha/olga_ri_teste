import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';

class MyLoginInput extends StatelessWidget {
  

  final String hint;

  MyLoginInput(this.hint); 


  Widget build(BuildContext context) {
    return TextFormField(
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