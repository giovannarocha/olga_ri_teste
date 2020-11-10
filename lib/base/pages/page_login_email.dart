import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:olga_ri/base/stores/store_page_login_email.dart';
import 'package:olga_ri/utils/MyColors.dart';
import 'package:olga_ri/widgets/MyBackButton.dart';
import 'package:olga_ri/widgets/MyLabel.dart';
import 'package:olga_ri/widgets/MyLoginBottomNavigation.dart';
import 'package:olga_ri/widgets/MyLoginInput.dart';

class PageLoginEmail extends StatelessWidget {
  var store = StorePageLoginEmail();
  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16),
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
                        text: "Para começar,\nqual o seu ",
                        style: buildTextStyle(FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                              text: "e-mail",
                              style: buildTextStyle(FontWeight.w700)),
                          TextSpan(
                            text: "?",
                            style: buildTextStyle(FontWeight.w400),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  MyLoginInput("Digite Aqui"),
                  Observer(builder: (context){
                    return TextDefault(store.emailIsCorrect ? "" : 'EMAIL INVÁLIDO. TENTE DE NOVO', 14, cor: MyColors.myAlertColor,);
                  }
                  
                  )
                ],
              ),
            ),
          ),
          MyLoginBottomNavigation(_validarEmail, 'PRÓXIMO')
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
 _validarEmail(){
   

 }