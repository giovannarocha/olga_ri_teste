// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_page_login_email.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StorePageLoginEmail on _StorePageLoginEmailBase, Store {
  final _$emailIsCorrectAtom =
      Atom(name: '_StorePageLoginEmailBase.emailIsCorrect');

  @override
  bool get emailIsCorrect {
    _$emailIsCorrectAtom.reportRead();
    return super.emailIsCorrect;
  }

  @override
  set emailIsCorrect(bool value) {
    _$emailIsCorrectAtom.reportWrite(value, super.emailIsCorrect, () {
      super.emailIsCorrect = value;
    });
  }

  final _$_StorePageLoginEmailBaseActionController =
      ActionController(name: '_StorePageLoginEmailBase');

  @override
  void main(dynamic value) {
    final _$actionInfo = _$_StorePageLoginEmailBaseActionController.startAction(
        name: '_StorePageLoginEmailBase.main');
    try {
      return super.main(value);
    } finally {
      _$_StorePageLoginEmailBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailIsCorrect: ${emailIsCorrect}
    ''';
  }
}
