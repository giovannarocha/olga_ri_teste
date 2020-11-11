import 'package:flutter/material.dart';


class TextDefault extends StatelessWidget {
  final String texto;
  final Color cor;
  final double size;
  final bool isItalic;
  final bool isBold;
  final bool isCenter;
  final bool isUnderline;

  TextDefault(this.texto, this.size, {this.isItalic = false, this.cor = Colors.black, this.isBold = false, this.isCenter = true, this.isUnderline = false});

  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
      style: TextStyle(
        fontFamily: 'FiraSans',
        color: cor,
        fontSize: size,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
        fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
      ),
      
    );
  }
}