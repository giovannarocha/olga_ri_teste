import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';
import 'package:olga_ri/widgets/MyBackButton.dart';
import 'package:olga_ri/widgets/MyButton.dart';
import 'package:olga_ri/widgets/MyLabel.dart';
import 'package:olga_ri/widgets/MyLoginBottomNavigation.dart';
import 'package:olga_ri/widgets/MyLoginInput.dart';

class PageLoginPassword extends StatelessWidget {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                  GestureDetector(
                    child: TextDefault(
                      'Esqueci minha senha',
                      14,
                      isUnderline: true,
                    ),
                    onTap: () {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: size.height * .4,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25))),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 16, bottom: 16),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 4,
                                          width: 40,
                                          color: MyColors.myGreyFont,
                                        ),
                                        TextDefault(
                                          'VAMOS REDEFINIR SUA SENHA?',
                                          14,
                                          cor: MyColors.myGreyFont,
                                        ),
                                        TextDefault(
                                            'Iremos te enviar as instruções de redefinição\nde senha para o e-mail abaixo, ok?',
                                            16),
                                        TextDefault('joao.pinedo@gmail.com', 16, isBold: true,),
                                        Container(
                                          margin: EdgeInsets.only(right: 24, left: 66, top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              GestureDetector(
                                                  child:
                                                      FlatButton(
                                                        child: TextDefault('Cancelar', 12),
                                                        onPressed: () => Navigator.pop(context),
                                                        ),
                                                        
                                                      ),
                                              MyYellowButton("ENTRAR", () {})
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  )
                ],
              ),
            ),
          ),
          MyLoginBottomNavigation(() {}, 'ENTRAR')
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
