class AppStrings {
  AppStrings._();

  static final AppStrings _instance = AppStrings._();
  static AppStrings get instance => _instance;

  static String get projectName => "Dynasty Urban Style";
  static String get appTitle => "DUS DASHBOARD";
  static String get appName => "DUS DASHBOARD";
  static String get dashboardTitle => "Dashboard";
  static String get dashboardSummary => "A summary of key data and insights of $projectName.";
  static String get monthlySalesChartName => "Monthly Sales";
  static String get percentageSalesTitle => "Percentage increase in sales";
  static String get monthProfitTitle => "Profit This Month";
  static String get monthSalesTitle => "Total Sales This Month";
}
