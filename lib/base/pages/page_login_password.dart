import 'package:flutter/material.dart';
import 'package:olga_ri/widgets/MyBackButton.dart';
import 'package:olga_ri/widgets/MyLabel.dart';
import 'package:olga_ri/widgets/MyLoginBottomNavigation.dart';
import 'package:olga_ri/widgets/MyLoginInput.dart';


class PageLoginPassword extends StatelessWidget {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    margin: EdgeInsets.only(
                        top: 16 + MediaQuery.of(context).padding.top),
                    child: Row(
                      children: [MyBackButton()],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        text: "Olá, João Pinedo :)\nAgora insira sua ",
                        style: buildTextStyle(FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                              text: "senha",
                              style: buildTextStyle(FontWeight.w700)),
                          
                        ]),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  MyLoginInput("Digite Aqui", controller),
                  TextDefault('Esqueci minha senha', 14, isUnderline: true,)
                ],
              ),
            ),
          ),
          MyLoginBottomNavigation((){}, 'ENTRAR')
        ],
      ),
    );
  }
  TextStyle buildTextStyle(weight) => TextStyle(
      fontFamily: 'FiraSans',
      fontWeight: weight,
      fontSize: 20,
      color: Colors.black);
}