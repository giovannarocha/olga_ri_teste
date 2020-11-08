import 'package:flutter/material.dart';


class TextDefault extends StatelessWidget {
  final String texto;
  final Color cor;
  final double size;
  final bool isItalic;

  TextDefault(this.texto, this.size, {this.isItalic = false, this.cor = Colors.black});

  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'FiraSans',
        color: cor,
        fontSize: size,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
        decoration: TextDecoration.none
      ),
      
    );
  }
}