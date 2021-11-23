import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unitest/constants.dart';
import 'package:flutter_unitest/field_validator.dart';

void main(){
  test('empty email test',(){
    var result=FieldValidator.validateEmail(null);
    expect(result, error_email_empty);
  });
  test('Invalid Email test',(){
    var result=FieldValidator.validateEmail('giwghogeogh');
    expect(result, error_email_not_valid);
  });
  test('valid Email test',(){
    var result=FieldValidator.validateEmail('email@email.com');
    expect(result, "");
  });
  test('empty password test',(){
    var result=FieldValidator.validatePassword('');
    expect(result, error_password_empty);
  });
  test('Invalid password test',(){
    var result=FieldValidator.validatePassword('123');
    expect(result, error_password_not_valid);
  });
  test('valid password test',(){
    var result=FieldValidator.validatePassword('123456');
    expect(result, "");
  });

}