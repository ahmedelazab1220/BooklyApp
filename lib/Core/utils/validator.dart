import 'package:booklyapp/Core/utils/loggers.dart';

class Validator {
  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      AppLogger.print('Field is required');
      return "Field is required";
    } else if (!RegExp(r'^\S+@bookly\.com$').hasMatch(value)) {
      return "Please enter a valid email ending with @bookly.com";
    } else {
      AppLogger.print('Field is required');
      return null;
    }
  }

  static bool passwordValidate(String pass) {
    String password = pass.trim();
    if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Field is required';
    } else {
      bool result = passwordValidate(value);
      if (result) {
        return null;
      } else {
        return "Your password should contain capital, small, special characters";
      }
    }
  }
}
