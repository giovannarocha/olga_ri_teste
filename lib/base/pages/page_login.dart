import 'package:flutter/material.dart';
import 'package:olga_ri/utils/MyColors.dart';
import 'package:olga_ri/widgets/MyButton.dart';
import 'package:olga_ri/widgets/MyLabel.dart';

class PageLogin extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget> [
          Container(
            height: size.height * 0.55,
            width: size.width * 1.0,
            padding: EdgeInsets.only(bottom: 30),
            color: MyColors.myLoginBg,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Image.asset("assets/img/imgLogin.png",
                fit: BoxFit.fitWidth,
                width: size.width * 1.0,
                ),
                Image.asset("assets/img/logo.png",
                width: size.width * 0.3,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18, bottom: 18),
            height: size.height * 0.45,
            width: size.width * 1.0,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                 TextDefault('VAMO DE SALADA?', 16, cor: MyColors.myGreyFont,),
                 TextDefault('Falta Pouco para você matar sua \n fome de Olga Ri ;)', 16),
                 MyYellowButton('ENTRAR', isSmallButton: false,),
                 TextDefault('Ou entre com:', 12),
                 Container(
                   padding: EdgeInsets.only(left: 87, right: 87),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget> [
                       Container(
                         width: 56,
                         height: 56,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border(
                            top: BorderSide(width: 0.5, color: Colors.black),
                            bottom: BorderSide(width: 0.5, color: Colors.black),
                            left: BorderSide(width: 0.5, color: Colors.black),
                            right: BorderSide(width: 0.5, color: Colors.black)
                          ),
                          color: Colors.white,
                         ),
                         child: FlatButton(onPressed: (){}, 
                         child: Image.asset('assets/icons/google.png',
                         width: size.width * 0.05,
                         )
                         ),
                       ),
                       Container(
                         width: 56,
                         height: 56,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff1877F2),
                         ),
                         child: FlatButton(onPressed: (){}, 
                         child: Image.asset('assets/icons/facebook.png',
                         width: size.width * 0.05,
                         )
                         ),
                       ),
                       Container(
                         width: 56,
                         height: 56,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                         ),
                         child: FlatButton(onPressed: (){}, 
                         child: Image.asset('assets/icons/apple.png',
                         width: size.width * 0.05,
                         )
                         ),
                       )
                     ],
                   ),
                 )
              ],
            ),
          )
        ],
      ),
    );
  }
}