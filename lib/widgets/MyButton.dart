import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';


class MyYellowButton extends StatelessWidget {

    final String texto;
    final bool isSmallButton;
    final Function function;

    MyYellowButton (this.texto, this.function, {this.isSmallButton = true});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: MyColors.myYellow,
      padding: isSmallButton ? EdgeInsets.only(left: 48, right: 48, top: 19, bottom: 19) : EdgeInsets.only(left: 135, right: 135, top: 19, bottom: 19),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        onPressed: function,
        child: Text(texto, 
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'FiraSansBold',
          fontSize: 16,
        ),
        ),
      ),
    );
  }
}