import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isKidsHover = false;
  bool isWomenHover = false;
  bool isMenHover = false;
  bool isKidsActive = true;
  bool isWomenActive = false;
  bool isMenActive = false;

  @override
  void initState() {
    isKidsHover = false;
    isWomenHover = false;
    isMenHover = false;
    isKidsActive = true;
    isWomenActive = false;
    isMenActive = false;
    helperMethods.getAdminProfile();
    helperMethods.getAdmins();
    helperMethods.getEmployees();
    helperMethods.getProducts();
    helperMethods.getCustomers();
    super.initState();
  }

  @override
  void dispose() {
    isKidsHover = false;
    isWomenHover = false;
    isMenHover = false;
    isKidsActive = true;
    isWomenActive = false;
    isMenActive = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /// header
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: brandColors.brandSurface,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomText(
                    "Sales".toUpperCase(),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color: brandColors.onBrandSurface,
                  ),

                  const Gap(60.0),

                  /// add a search box
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 0.0,
                      ),
                      child: TextFormField(
                        controller: productsController.searchTextController,
                        onChanged: (String value) {
                          productsController.filterProducts(value);
                        },
                        cursorColor: brandColors.onBrandSurface,
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.poppins(
                          color: brandColors.onBrandSurface,
                          fontSize: 16.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: GoogleFonts.poppins(
                            color: brandColors.onBrandSurface!.withOpacity(0.5),
                            fontSize: 16.0,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.white24,
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.white24,
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.white24,
                              width: 1.0,
                            ),
                          ),
                          suffixIcon: Icon(
                            LineAwesomeIcons.search,
                            color: brandColors.onBrandSurface!.withOpacity(0.5),
                          ),
                          // change the cursor color
                        ),
                      ),
                    ),
                  ),
                  const Gap(60.0),
                  Expanded(
                    child: Tooltip(
                      message: "Select employee to complete a sale",
                      child: EmployeeDropDownButton(items: employeeController.employees),
                    ),
                  ),

                  const Gap(60.0),
                ],
              ),
            ),

            /// build page layout
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return const SalesView();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
