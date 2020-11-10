import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'store_page_login_email.g.dart';

class StorePageLoginEmail = _StorePageLoginEmailBase with _$StorePageLoginEmail;

abstract class _StorePageLoginEmailBase with Store {
  @observable
  bool emailIsCorrect = true;
  @action
  void main (value){
    emailIsCorrect = value;
  }
} 