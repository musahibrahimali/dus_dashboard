import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _showSales = false;

  @override
  void initState() {
    /// fetch admins, customers, products, employees
    adminController.getAdminProfile();
    adminController.fetchAdmins();
    helperMethods.getCustomers();
    helperMethods.getEmployees();
    helperMethods.getProducts();
    helperMethods.getSales();

    _showSales = false;

    super.initState();
  }

  @override
  void dispose() {
    _showSales = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                children: <Widget>[
                  PageHeader(
                    title: appStrings.dashboardTitle.toUpperCase(),
                    description: appStrings.dashboardSummary,
                    color: brandColors.onBrandSurface,
                  ),

                  /// container on the right side of the app bar
                  Row(
                    children: <Widget>[
                      /// list view icon
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _showSales = !_showSales;
                          });
                        },
                        icon: Icon(
                          LineAwesomeIcons.list,
                          size: 30.0,
                          color: brandColors.onBrandSurface,
                        ),
                      ),
                      const Gap(10.0),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(16.0),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (_showSales) {
                    return const SalesListView();
                  }
                  return const SalesOverview();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
