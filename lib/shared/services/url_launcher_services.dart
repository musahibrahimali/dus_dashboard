import 'package:dus_dashboard/index.dart';

/// call services
/// using the [iLaunchUrl] from the helper functions
class CallServices {
  Future<void> callDriver({required String phoneNumber}) async {
    String url = "tel:$phoneNumber";
    await HelperFunctions.iLaunchUrl(url);
  }
}

/// email services
/// using the [iLaunchUrl] from the helper functions
class EmailServices {
  Future<void> sendEmail({required String email}) async {
    String url = "mailto:$email";
    await HelperFunctions.iLaunchUrl(url);
  }
}

/// sms services
/// using the [iLaunchUrl] from the helper functions
class SmsServices {
  Future<void> sendSms({required String phoneNumber}) async {
    String url = "sms:$phoneNumber";
    await HelperFunctions.iLaunchUrl(url);
  }
}

/// web services
/// using the [iLaunchUrl] from the helper functions
class WebServices {
  Future<void> openWebPage({required String url}) async {
    await HelperFunctions.iLaunchUrl(url);
  }
}
