import 'package:flutter/material.dart';
import 'base/pages/page_login.dart';
import 'base/pages/page_login_email.dart';
import 'base/pages/page_login_password.dart';

void main() => runApp(
  MaterialApp(
      theme: ThemeData(
        fontFamily: 'FiraSans',
      ),

      debugShowCheckedModeBanner: false,
      /*
      Devido o enunciado do teste, ter a palavra "telas", fiz desta forma (trës telas), porém
      gostaria de mencionar que normalmente utilizaria o widget Visibility junto com o MobX
      para fazer tudo em uma tela só por serem pequenos blocos. 
      */

      routes: {
        "/":(context) => PageLogin(),
        "/PageLoginEmail":(context) => PageLoginEmail(),
        "/PageLoginPassword":(context) => PageLoginPassword()
      },
    ));