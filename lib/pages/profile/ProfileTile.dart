import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback onTap;
  const ProfileTile({
    super.key,
    required this.title,
    this.leadingIcon,
    this.trailingIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: CustomText(
        title,
        color: Theme.of(context).colorScheme.onBackground,
        fontSize: 4.0.sp,
        fontWeight: FontWeight.w700,
      ),
      leading: leadingIcon != null
          ? Icon(
              leadingIcon,
              size: 5.0.w,
              color: Theme.of(context).colorScheme.onBackground,
            )
          : null,
      trailing: trailingIcon != null
          ? Icon(
              trailingIcon,
              size: 20,
              color: Colors.black,
            )
          : null,
    );
  }
}
