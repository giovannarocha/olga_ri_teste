import 'package:mobx/mobx.dart';
part 'store_page_login_email.g.dart';

class StorePageLoginEmail = _StorePageLoginEmailBase with _$StorePageLoginEmail;

abstract class _StorePageLoginEmailBase with Store {
  @observable
  bool emailIsCorrect = true;
  @action
  validarEmail (value){
    value == 'joao.pinedo@gmail.com' ? emailIsCorrect = true: emailIsCorrect = false;
  }
} 