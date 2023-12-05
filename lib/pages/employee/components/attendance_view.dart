import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class AttendanceView extends StatefulWidget {
  const AttendanceView({super.key});

  @override
  State<AttendanceView> createState() => _AttendanceViewState();
}

class _AttendanceViewState extends State<AttendanceView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  _getMonthCellBackgroundColor({required DateTime date}) {
    employeeController.getEmployeeAttendance(id: employeeController.activeEmployee?.id ?? "");
    Color color = employeeController.getBackgroundColorWithDate(date: date);
    return color;
  }

  _getCellTextColor({required Color bgColor}) {
    if (bgColor == Colors.redAccent || bgColor == Colors.yellowAccent || bgColor == Colors.green) {
      return Colors.white;
    }
    return Colors.grey.shade900;
  }

  @override
  void initState() {
    helperMethods.getEmployees();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomColors brandColors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.symmetric(
                horizontal: 6.0,
                vertical: 5.0,
              ),
              child: SfCalendar(
                headerHeight: 50.0,
                viewHeaderHeight: 50.0,

                /// calender header style
                headerStyle: CalendarHeaderStyle(
                  backgroundColor: brandColors.brandSurface,
                  textStyle: GoogleFonts.poppins(
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 5,
                    color: brandColors.onBrandSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                /// view header style
                viewHeaderStyle: ViewHeaderStyle(
                  backgroundColor: Colors.white,
                  dayTextStyle: GoogleFonts.poppins(
                    fontSize: 18.0,
                    // color: BrandColors.kColorText,
                    fontWeight: FontWeight.normal,
                  ),
                  dateTextStyle: GoogleFonts.poppins(
                    fontSize: 20.0,
                    // color: BrandColors.kColorText,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                showCurrentTimeIndicator: false,
                showDatePickerButton: true,
                showWeekNumber: true,
                weekNumberStyle: WeekNumberStyle(
                  backgroundColor: brandColors.brandYellowLightContainer,
                  textStyle: GoogleFonts.poppins(
                    color: brandColors.onBrandYellowLightContainer,
                    fontSize: 15.0,
                  ),
                ),
                showNavigationArrow: false,
                allowViewNavigation: false,
                view: CalendarView.month,
                monthCellBuilder: (BuildContext buildContext, MonthCellDetails details) {
                  final Color backgroundColor = _getMonthCellBackgroundColor(date: details.date);
                  final Color defaultColor = Colors.grey.shade400;
                  return Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(
                        color: defaultColor,
                        width: 0.5,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        details.date.day.toString(),
                        style: GoogleFonts.poppins(
                          color: _getCellTextColor(bgColor: backgroundColor),
                        ),
                      ),
                    ),
                  );
                },
                viewNavigationMode: ViewNavigationMode.snap,
                minDate: DateTime(2020, 03, 05, 10, 0, 0),
                backgroundColor: Theme.of(context).colorScheme.background,
                initialSelectedDate: DateTime.now(),
                todayHighlightColor: Colors.transparent,
                cellEndPadding: 5,
                todayTextStyle: GoogleFonts.poppins(
                  // color: BrandColors.kColorDarkBlue,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2.0,
                ),
                monthViewSettings: const MonthViewSettings(
                  showTrailingAndLeadingDates: true,
                  dayFormat: 'EEE',
                ),
                selectionDecoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
