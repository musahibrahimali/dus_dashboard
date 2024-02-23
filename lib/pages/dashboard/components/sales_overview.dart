import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intersperse/intersperse.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class SalesOverview extends StatefulWidget {
  const SalesOverview({super.key});

  @override
  State<SalesOverview> createState() => _SalesOverviewState();
}

class _SalesOverviewState extends State<SalesOverview> {
  @override
  Widget build(BuildContext context) {
    final ResponsiveBreakpointsData responsive = ResponsiveBreakpoints.of(context);

    // debugPrint(
    //   helperFunctions
    //       .getMonthName(
    //         monthNumber: (DateTime.now().month - 1) < 0 ? 12 + (DateTime.now().month - 1) : DateTime.now().month - 1,
    //       )
    //       .toString(),
    // );

    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (responsive.isMobile)
            ...<SummaryCard>[
              SummaryCard(
                title: 'Capital',
                value: "${appController.defaultLanguage.currency} ${productsController.totalProductAmount}",
              ),
              SummaryCard(
                title: 'Total Sales',
                value: "${appController.defaultLanguage.currency} ${salesController.totalSales}",
              ),
              SummaryCard(
                title: 'Sales Rate',
                value: salesController.salesRate,
              ),
              SummaryCard(
                title: 'Total Products',
                value: productsController.numberOfProducts.toString(),
              ),
              SummaryCard(
                title: 'Total Customers',
                value: customerController.numberOfCustomers.toString(),
              ),
              SummaryCard(
                title: 'Total Admins',
                value: adminController.numberOfAdmins.toString(),
              ),
              SummaryCard(
                title: 'Total Employees',
                value: employeeController.numberOfEmployees.toString(),
              ),
            ].map<Widget>((SummaryCard card) => card).intersperse(const Gap(16.0)).toList()
          else
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <SummaryCard>[
                  SummaryCard(
                    title: 'Product Capital',
                    value: "${appController.defaultLanguage.currency} ${productsController.totalProductAmount}",
                  ),
                  SummaryCard(
                    title: 'Total Sales',
                    value: "${appController.defaultLanguage.currency} ${salesController.totalSales}",
                  ),
                  SummaryCard(
                    title: 'Sales Rate',
                    value: salesController.salesRate,
                  ),
                  SummaryCard(
                    title: 'Total Products',
                    value: productsController.numberOfProducts.toString(),
                  ),
                  SummaryCard(
                    title: 'Total Customers',
                    value: customerController.numberOfCustomers.toString(),
                  ),
                  SummaryCard(
                    title: 'Total Admins',
                    value: adminController.numberOfAdmins.toString(),
                  ),
                  SummaryCard(
                    title: 'Total Employees',
                    value: employeeController.numberOfEmployees.toString(),
                  ),
                ].map<Widget>((SummaryCard card) => Expanded(child: card)).intersperse(const Gap(16.0)).toList(),
              ),
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
                        "${appController.defaultLanguage.currency} ${salesController.thisMonthSales}",
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
                        "${appController.defaultLanguage.currency} ${salesController.thisMonthProfit}",
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
                        salesController.percentageSalesIncrease,
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
    );
  }
}
