import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intersperse/intersperse.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  void initState() {
    /// fetch admins, customers, products, employees
    adminController.getAdminProfile();
    adminController.fetchAdmins();
    helperMethods.getCustomers();
    helperMethods.getEmployees();
    helperMethods.getProducts();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ResponsiveBreakpointsData responsive = ResponsiveBreakpoints.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PageHeader(
                title: appStrings.dashboardTitle.toUpperCase(),
                description: appStrings.dashboardSummary,
              ),
              const Gap(16.0),
              if (responsive.isMobile)
                ...<SummaryCard>[
                  const SummaryCard(title: 'Total Sales', value: 'GH¢ 0.0'),
                  const SummaryCard(title: 'Sales Rate', value: '52.3%'),
                  SummaryCard(title: 'Total Products', value: productsController.numberOfProducts.toString()),
                  SummaryCard(title: 'Total Customers', value: customerController.numberOfCustomers.toString()),
                  SummaryCard(title: 'Total Admins', value: adminController.numberOfAdmins.toString()),
                  SummaryCard(title: 'Total Employees', value: employeeController.numberOfEmployees.toString()),
                ].map<Widget>((SummaryCard card) => card).intersperse(const Gap(16.0)).toList()
              else
                Row(
                  children: <SummaryCard>[
                    const SummaryCard(title: 'Total Sales', value: '\$125,000'),
                    const SummaryCard(title: 'Sales Rate', value: '52.3%'),
                    SummaryCard(title: 'Total Products', value: productsController.numberOfProducts.toString()),
                    SummaryCard(title: 'Total Customers', value: customerController.numberOfCustomers.toString()),
                    SummaryCard(title: 'Total Admins', value: adminController.numberOfAdmins.toString()),
                    SummaryCard(title: 'Total Employees', value: employeeController.numberOfEmployees.toString()),
                  ].map<Widget>((SummaryCard card) => Expanded(child: card)).intersperse(const Gap(16.0)).toList(),
                ),
              const Gap(16.0),
              const Expanded(
                child: MainChart(),
              ),

              /// Bottom card
              Card(
                shadowColor: Colors.black12,
                child: Row(
                  children: <Widget>[
                    /// Total sales this month
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Gap(16.0),
                          Text(
                            appStrings.monthSalesTitle,
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(8.0),
                          Text(
                            '\$125,000',
                            style: GoogleFonts.poppins(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(16.0),
                        ],
                      ),
                    ),

                    /// Profit this month
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Gap(16.0),
                          Text(
                            appStrings.monthProfitTitle,
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(8.0),
                          Text(
                            '\$125,000',
                            style: GoogleFonts.poppins(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(16.0),
                        ],
                      ),
                    ),

                    /// Percentage increase in sales
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Gap(16.0),
                          Text(
                            appStrings.percentageSalesTitle,
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(8.0),
                          Text(
                            '52.3%',
                            style: GoogleFonts.poppins(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(16.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
