import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showGridView = true;
  bool _showListView = false;
  bool _showAddProductForm = false;
  bool _showDeleteButton = false;

  @override
  void initState() {
    _showAddProductForm = false;
    _showGridView = true;
    _showListView = false;
    _showDeleteButton = false;

    helperMethods.getProducts();

    super.initState();
  }

  @override
  void dispose() {
    _showAddProductForm = false;
    _showGridView = true;
    _showListView = false;
    _showDeleteButton = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (adminController.isLoggedIn && adminController.activeAdmin != null) {
            setState(() {
              _showListView = false;
              _showGridView = false;
              _showAddProductForm = true;
            });
          } else {
            /// if user is not an admin or not logged in
            /// redirect to admin auth page
            const AdminAuthRoute().go(context);
          }
        },
        backgroundColor: brandColors.brandSurface,
        child: Icon(
          LineAwesomeIcons.plus,
          size: 30.0,
          color: brandColors.onBrandSurface,
        ),
      ),
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
                    "Products".toUpperCase(),
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

                  /// container on the right side of the app bar
                  Row(
                    children: <Widget>[
                      /// toggle between show product delete button or not
                      if (productsController.products.isNotEmpty)
                        Tooltip(
                          message: "Show delete button on Products",
                          child: Switch(
                            value: _showDeleteButton,
                            onChanged: (bool value) {
                              setState(() {
                                _showListView = false;
                                _showGridView = true;
                                _showAddProductForm = false;
                                if (value) {
                                  _showDeleteButton = true;
                                } else {
                                  _showDeleteButton = false;
                                }
                              });
                            },
                            activeColor: brandColors.gold,
                            activeTrackColor: brandColors.goldContainer,
                            inactiveThumbColor: brandColors.brandSurface,
                            inactiveTrackColor: Colors.grey.shade300,
                          ),
                        ),

                      const Gap(10.0),

                      /// list view icon
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _showListView = true;
                            _showGridView = false;
                            _showAddProductForm = false;
                          });
                        },
                        icon: Icon(
                          LineAwesomeIcons.list,
                          size: 30.0,
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                      const Gap(10.0),

                      /// grid view icon
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _showListView = false;
                            _showGridView = true;
                            _showAddProductForm = false;
                          });
                        },
                        icon: Icon(
                          LineAwesomeIcons.th_large,
                          size: 30.0,
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20.0),

            /// build page layout
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (_showListView) {
                    return const ProductListView();
                  } else if (_showGridView) {
                    return ProductGridView(showDeleteButton: _showDeleteButton);
                  } else if (_showAddProductForm) {
                    return const AddProduct();
                  } else {
                    return const ProductGridView();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
