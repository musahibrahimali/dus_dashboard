import 'package:auto_size_text/auto_size_text.dart';
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
    double width = 600.0,
    double height = 140.0,
  }) {
    ElegantNotification.info(
      width: width,
      height: height,
      title: AutoSizeText(
        title.toTitleCase(),
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        maxLines: 5,
      ),
    ).show(context);
  }

  // error
  showErrorNotification({
    required BuildContext context,
    required String title,
    required String message,
    double width = 600.0,
    double height = 140.0,
  }) {
    ElegantNotification.error(
      width: width,
      height: height,
      title: AutoSizeText(
        title.toTitleCase(),
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        maxLines: 5,
      ),
    ).show(context);
  }

  // show success notification
  showSuccessNotification({
    required BuildContext context,
    required String title,
    required String message,
    double width = 600.0,
    double height = 140.0,
  }) {
    ElegantNotification.success(
      width: width,
      height: height,
      title: AutoSizeText(
        title.toTitleCase(),
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w900,
        ),
      ),
      description: CustomText(
        message.toTitleCase(),
        maxLines: 5,
      ),
    ).show(context);
  }
}
