import 'package:flutter_unitest/Constants.dart';

class FieldValidator {
  static String validateEmail(String? email) {
    return email != null
        ? email.isEmpty
            ? error_email_empty
            : RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(email)
                ? ""
                : error_email_not_valid
        : error_email_empty;
  }

  static String? validatePassword(String? password) {
    return password != null
        ? password.isEmpty
            ? error_password_empty
            : password.length < 6
                ? error_password_not_valid
                : ""
        : error_password_empty;
  }
}
