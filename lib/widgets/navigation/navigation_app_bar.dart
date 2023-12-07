import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (AppController appController) {
        return GetBuilder<AdminController>(
            init: AdminController(),
            builder: (AdminController adminController) {
              return AppBar(
                title: const NavigationTitle(),
                centerTitle: false,
                elevation: 10,
                actions: <Widget>[
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  Expanded(child: Container()),

                  /// [DropdownButtonHideUnderline] is used to hide the underline of the dropdown button
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<LanguageModel>(
                        isExpanded: true,
                        hint: Text(
                          appController.defaultLanguage.language,
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: appController.kLanguages
                            .map((LanguageModel item) => DropdownMenuItem<LanguageModel>(
                                  value: item,
                                  child: Row(
                                    children: <Widget>[
                                      // add image
                                      Image.asset(
                                        item.image,
                                        width: 20.0,
                                      ),
                                      const Gap(10.0),
                                      Text(
                                        item.language,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                        value: appController.defaultLanguage,
                        onChanged: (LanguageModel? value) {
                          appController.changeLanguage(value!);
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          height: double.infinity,
                          width: 150.0,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                      ),
                    ),
                  ),

                  const Gap(10.0),

                  /// active [AdminModel] name
                  SelectionArea(
                    child: Text(
                      adminController.activeAdmin?.userName ?? adminController.activeAdmin?.firstName ?? "",
                    ),
                  ),

                  /// [AdminModel] options
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: PopupMenuButton<void>(
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<void>>[
                        if (!(adminController.activeAdmin == null))
                          PopupMenuItem(
                            child: const ListTile(
                              leading: Icon(LineAwesomeIcons.user_circle),
                              title: Text('Profile'),
                            ),
                            onTap: () {
                              // Sign out logic
                              const AdminAuthRoute().go(context);
                            },
                          ),
                        if ((adminController.activeAdmin == null))
                          PopupMenuItem(
                            child: const ListTile(
                              leading: Icon(LineAwesomeIcons.alternate_sign_in),
                              title: Text('Sign in'),
                            ),
                            onTap: () {
                              // Sign in logic
                              const AdminAuthRoute().go(context);
                            },
                          ),
                        if (!(adminController.activeAdmin == null))
                          PopupMenuItem(
                            child: const ListTile(
                              leading: Icon(LineAwesomeIcons.alternate_sign_out),
                              title: Text('Sign out'),
                            ),
                            onTap: () async {
                              // Sign out logic
                              var response = await adminRepo.logOutAdmin();
                              response.fold(
                                (l) => notificationService.showErrorNotification(
                                  context: context,
                                  title: "Error",
                                  message: l.message.toString(),
                                ),
                                (r) {
                                  notificationService.showSuccessNotification(
                                    context: context,
                                    title: "Success",
                                    message: "Logged out successfully",
                                  );
                                  const AdminAuthRoute().go(context);
                                },
                              );
                            },
                          ),
                      ],
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
                  const Gap(8.0),
                ],
              );
            });
      },
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
