class Validators {
  Validators._();

  static final _instance = Validators._();
  static Validators get instance => _instance;
  // validate phone number
  String? validatePhoneNumber({required String phoneNumber}) {
    Pattern patternMobileNumber = r'^(?:[+0]9)?[0-9]{10,15}$';
    if (phoneNumber.isEmpty) {
      return "Invalid Phone Number";
    } else if (phoneNumber.contains("+") && phoneNumber.contains(RegExp(r'\d|')) && !phoneNumber.contains(RegExp(r'[a-zA-Z]'))) {
      return "Please provide a valid phone number";
    } else if (!phoneNumber.contains(RegExp(r'[a-zA-Z]')) && phoneNumber.contains(RegExp(r'\d')) && !phoneNumber.contains("+")) {
      if (!checkPattern(pattern: patternMobileNumber, value: phoneNumber)) {
        return "Please provide a valid phone number";
      }
    }
    return null;
  }

  // validate name
  String? validateName({required String name}) {
    String patternName = r"^[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z]+[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-_]*$";
    if (name.isEmpty) {
      return "Name Field cannot be empty";
    } else if (name.toString().length < 2 && !checkPattern(pattern: patternName, value: name)) {
      return "This name field must be at least 2 characters";
    } else if (name.toString().length > 30) {
      return "This name field must be at most 30 characters";
    } else if (checkPattern(pattern: patternName, value: name)) {
      return null;
    }
    return null;
  }

  // validate email
  String? validateEmail({required String email}) {
    String patternEmail = r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)";
    if (email.isEmpty) {
      return "Invalid Email";
    } else if (!checkPattern(pattern: patternEmail, value: email)) {
      return "Please enter a valid Email";
    }
    return null;
  }

  // validate password
  String? validateLoginPassword({required String password}) {
    if (password.isEmpty) {
      return "Password cannot be empty";
    } else if (password.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  // validate is numeric
  bool isNumeric({required String value}) {
    Pattern patternInteger = r'^-?[0-9]+$';
    return checkPattern(
      pattern: patternInteger,
      value: value,
    );
  }

  // check pattern
  bool checkPattern({pattern, value}) {
    RegExp regularCheck = RegExp(pattern);
    if (regularCheck.hasMatch(value)) {
      return true;
    }
    return false;
  }
}
