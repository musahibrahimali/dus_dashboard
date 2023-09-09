import 'package:dus_dashboard/index.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationService {
  NotificationService._();

  static final _instance = NotificationService._();
  static NotificationService get instance => _instance;

  showInfoNotification({
    required BuildContext context,
    required String title,
    required String message,
    double width = 400.0,
    double height = 100.0,
  }) {
    ElegantNotification.info(
      width: width,
      height: height,
      title: Text(
        title.toTitleCase(),
        style: GoogleFonts.montserrat(
          color: BrandColors.kColorDarkBlue,
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        color: BrandColors.kLightBlue,
        maxLines: 5,
      ),
    ).show(context);
  }

  // error
  showErrorNotification({
    required BuildContext context,
    required String title,
    required String message,
    double width = 400.0,
    double height = 140.0,
  }) {
    ElegantNotification.error(
      width: width,
      height: height,
      title: Text(
        title.toTitleCase(),
        style: GoogleFonts.poppins(
          color: BrandColors.kErrorColor,
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        color: BrandColors.kBrandYellowColor,
        maxLines: 5,
      ),
    ).show(context);
  }

  // show success notification
  showSuccessNotification({
    required BuildContext context,
    required String title,
    required String message,
    double width = 400.0,
    double height = 100.0,
  }) {
    ElegantNotification.success(
      width: width,
      height: height,
      title: Text(
        title.toTitleCase(),
        style: GoogleFonts.poppins(
          color: BrandColors.kColorDarkGreen,
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        color: BrandColors.kColorLightGreen,
        maxLines: 5,
      ),
    ).show(context);
  }
}
