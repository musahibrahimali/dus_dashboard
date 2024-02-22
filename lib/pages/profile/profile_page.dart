import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<PlatformFile>? _paths;

  void _pickFiles() async {
    try {
      _paths = (await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        onFileLoading: (FilePickerStatus status) => debugPrint(
          status.toString(),
        ),
        allowedExtensions: ['png', 'jpg', 'jpeg', 'heic'],
      ))
          ?.files;
      if (!mounted) return;
    } on PlatformException catch (e) {
      notificationService.showSuccessNotification(
        context: context,
        title: "Success",
        message: e.message.toString(),
      );
    } catch (e) {
      notificationService.showSuccessNotification(
        context: context,
        title: "Success",
        message: e.toString(),
      );
    }
    setState(() {
      if (_paths != null) {
        if (_paths != null) {
          //passing file bytes and file name for API call
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0.h,
            vertical: 0.0.h,
          ),
          child: Row(
            children: <Widget>[
              /// left side content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    /// profile picture
                    Container(
                      height: 132.00,
                      width: 327.00,
                      margin: const EdgeInsets.only(
                        left: 10.00,
                        top: 24.00,
                        right: 10.00,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 100.00,
                              width: 100.00,
                              margin: const EdgeInsets.only(
                                left: 113.00,
                                top: 10.00,
                                right: 113.00,
                              ),
                              child: Obx(
                                () => ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: CachedNetworkImage(
                                    width: 38.0,
                                    height: 38.0,
                                    imageUrl: adminController.activeAdmin?.avatar ??
                                        "https://res.cloudinary.com/dynasty-urban-style/image/upload/v1701686160/defaults/account_afhqmj.png",
                                    fit: BoxFit.cover,
                                    placeholder: (BuildContext context, String url) => Container(
                                      width: 38.0,
                                      height: 38.0,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(Assets.imagesAccount),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    errorWidget: (BuildContext context, String url, dynamic dynamic) {
                                      return Container(
                                        width: 38.0,
                                        height: 38.0,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(Assets.imagesAccount),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: _pickFiles,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 30.00,
                                width: 30.00,
                                margin: const EdgeInsets.only(
                                  left: 183.00,
                                  top: 10.00,
                                  right: 113.00,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(
                                    5.00,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// admin name
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.00,
                        top: 16.00,
                        right: 10.00,
                      ),
                      child: Text(
                        adminController.activeAdmin?.userName ?? "User",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    /// admin email
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.00,
                        top: 8.00,
                        right: 10.00,
                        bottom: 48.00,
                      ),
                      child: Text(
                        "Admin | ${adminController.activeAdmin?.email ?? "Email"}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 4.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    ListTile(
                      onTap: () {},
                      title: CustomText(
                        "Change Password",
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 4.0.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      leading: Icon(
                        LineAwesomeIcons.lock_open,
                        size: 5.0.w,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      onTap: () async {
                        dartz.Either<Failure, bool> response = await helperMethods.deleteAdmin(id: adminController.activeAdmin!.id);

                        if (!mounted) return;
                        response.fold(
                          (Failure error) {
                            notificationService.showErrorNotification(
                              context: context,
                              title: "Error",
                              message: error.message,
                            );
                          },
                          (bool result) {
                            const AdminAuthRoute().go(context);
                            notificationService.showSuccessNotification(
                              context: context,
                              title: "Success",
                              message: "Admin deleted successfully",
                            );
                          },
                        );
                      },
                      title: CustomText(
                        "Delete Account",
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 4.0.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      leading: Icon(
                        LineAwesomeIcons.lock_open,
                        size: 5.0.w,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),

                    Gap(20.0.h),
                  ],
                ),
              ),

              /// right side content
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
