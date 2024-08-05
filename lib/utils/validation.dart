import 'package:barber_app/utils/imports.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Validator {
  // Validates if the email is valid
  static bool validateEmail(String email) {
    if (email.isEmpty) {
      Fluttertoast.showToast(msg: "Email should not be empty");
      return false;
    }
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegExp.hasMatch(email)) {
      Fluttertoast.showToast(msg: "Email is not valid");
      return false;
    }
    return true;
  }

  // Checks if the input field is not empty
  static bool checkNotEmpty(String input, String fieldName) {
    if (input.isEmpty) {
      Fluttertoast.showToast(msg: "$fieldName should not be empty");
      return false;
    }
    return true;
  }

// verify valid otp
  static bool verifyOtp(String input) {
    if (input.length == 4) {
      return true;
    } else {
      Fluttertoast.showToast(msg: 'Please enter valid OTP');
      return false;
    }
  }

  // Validates if the mobile number is valid
  static bool validateMobileNumber(String number) {
    if (number.isEmpty) {
      Fluttertoast.showToast(msg: "Phone number is not empty");
      return false;
    }
    final RegExp mobileRegExp = RegExp(r'^[0-9]{10}$');
    if (!mobileRegExp.hasMatch(number)) {
      Fluttertoast.showToast(msg: "Phone number is not valid");
      return false;
    }
    return true;
  }

  static bool validatePassword(String password, BuildContext context) {
    if (password.isEmpty) {
      Fluttertoast.showToast(msg: "Password is not empty");

      return false;
    }
    if (password.length < 8 || password.length > 12) {
      Fluttertoast.showToast(
          msg: "Password must be between 8 and 12 characters");

      return false;
    }
    final RegExp specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final RegExp numberRegex = RegExp(r'[0-9]');
    final RegExp letterRegex = RegExp(r'[a-zA-Z]');

    if (!specialCharRegex.hasMatch(password) ||
        !numberRegex.hasMatch(password) ||
        !letterRegex.hasMatch(password)) {
      Fluttertoast.showToast(
          msg:
              "Password must include at least one letter, one number, and one special character (e.g., @, #, \$)");

      return false;
    }
    return true;
  }
}
