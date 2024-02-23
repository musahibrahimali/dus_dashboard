import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunctions {
  HelperFunctions._();

  static final HelperFunctions _instance = HelperFunctions._();
  static HelperFunctions get instance => _instance;

  static String getInitials(String name) {
    List<String> nameSplit = name.split(" ");
    String initials = "";
    int numWords = 2;

    if (nameSplit.length < 2) {
      numWords = nameSplit.length;
    }

    for (int i = 0; i < numWords; i++) {
      initials += nameSplit[i][0];
    }

    return initials;
  }

  static final DateTime _now = DateTime.now();

  static Future<void> iLaunchUrl(String url) async {
    // convert the url to a Uri
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
    await launchUrl(uri);
  }

  /// get the color based on the string
  Color getColor(String color) {
    // return colors for the product based on the color string
    switch (color.toLowerCase()) {
      case "red":
        return Colors.red;
      case "blue":
        return Colors.blue;
      case "green":
        return Colors.green;
      case "yellow":
        return Colors.yellow;
      case "orange":
        return Colors.orange;
      case "purple":
        return Colors.purple;
      case "pink":
        return Colors.pink;
      case "cyan":
        return Colors.cyan;
      case "teal":
        return Colors.teal;
      case "amber":
        return Colors.amber;
      case "lime":
        return Colors.lime;
      case "brown":
        return Colors.brown;
      case "grey":
        return Colors.grey;
      case "white":
        return Colors.white;
      case "black":
        return Colors.black;
      default:
        return brandSurface;
    }
  }

  String currentYear() {
    // get the current year
    var currentYear = _now.year;
    return currentYear.toString();
  }

  String currentMonth() {
    const months = <String>[
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    // get the current year
    var currentMonth = _now.month;
    return months[currentMonth];
  }

  String currentDay() {
    // get the current year
    String currentDay = DateFormat('EEEE').format(_now);
    return currentDay;
  }

  // get month name with month number
  String getMonthName({required int monthNumber}) {
    const months = <String>[
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    debugPrint("previousMonth: ${months[monthNumber]}");
    return months[monthNumber];
  }

  /// get the hours between two times
  int getHoursBetweenTime({
    required DateTime start,
    required DateTime end,
  }) {
    Duration duration = end.difference(start).abs();
    final hours = duration.inHours;
    debugPrint("Hour difference: $hours");
    return hours;
  }

  /// get minutes between time
  int getMinutesBetweenTime({
    required DateTime start,
    required DateTime end,
  }) {
    Duration duration = end.difference(start).abs();
    final minutes = duration.inMinutes % 60;
    return minutes;
  }

  DateTime currentRawDate() {
    return DateTime.now();
  }

  String currentDate() {
    String formattedDate = DateFormat('kk:mm:ss EEE d MMM').format(_now);
    return formattedDate;
  }

  String formattedDay() {
    String formattedDate = DateFormat('EEE d MMM').format(_now);
    return formattedDate;
  }

  String currentTime() {
    String time = DateFormat('h:mm a').format(_now);
    return time.toString();
  }

  int determineLate({required DateTime time}) {
    int hour = time.hour;
    if (hour < 8) {
      // Before 8:00 AM
      return 3; // Not late
    } else if (hour < 9) {
      // Between 8:00 AM and 9:00 AM
      return 2; // Fair reporting time
    } else {
      // After 9:00 AM
      return 1; // Late
    }
  }

  String lateInterpretation({required int lateInt}) {
    if (lateInt == 1) {
      return "Late";
    }
    if (lateInt == 2) {
      return "Fair";
    }
    if (lateInt == 3) {
      return "On Time";
    }
    return "None";
  }

  String getDateFromString({required String dateTimeString}) {
    DateTime date = DateTime.parse(dateTimeString);
    String dayFrm = DateFormat('d MMM').format(date);
    return "$dayFrm ${currentYear()}";
  }

  String getDayFromString({required String dateTimeString}) {
    DateTime date = DateTime.parse(dateTimeString);
    String dayFrm = DateFormat('EEEE').format(date);
    return dayFrm;
  }

  getTimeFromString({required String dateTimeString}) {
    DateTime? date = DateTime.tryParse(dateTimeString);
    if (date != null) {
      String time = DateFormat('h:mm a').format(date);
      return time.toString();
    }
    return dateTimeString;
  }

  Future<void> storeValue({required String key, required String value}) async {
    // Write value
    await storage.write(key: key, value: value);
  }

  Future<String?> readValue({required String key}) async {
    // Read value
    String? value = await storage.read(key: key);
    // debugPrint("access_token from storage $value");
    return value;
  }

  Future<void> deleteValue({required String key}) async {
    // delete value
    await storage.delete(key: key);
  }
}
