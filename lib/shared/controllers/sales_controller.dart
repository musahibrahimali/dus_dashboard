import 'package:dus_dashboard/index.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  static final SalesController _instance = Get.find();
  static SalesController get instance => _instance;

  final _sales = <SaleModel>[].obs;
  final _activeSale = Rxn<SaleModel>();

  /// five months back data
  final _monthOneName = helperFunctions.getMonthName(monthNumber: DateTime.now().month - 1).obs;
  final _monthTwoName = helperFunctions.getMonthName(monthNumber: DateTime.now().month - 2).obs;
  final _monthThreeName = helperFunctions.getMonthName(monthNumber: DateTime.now().month - 3).obs;
  final _monthFourName = helperFunctions.getMonthName(monthNumber: DateTime.now().month - 4).obs;
  final _monthFiveName = helperFunctions.getMonthName(monthNumber: DateTime.now().month - 5).obs;

  /// five months back sales
  final _monthOneSales = 0.0.obs;
  final _monthTwoSales = 0.0.obs;
  final _monthThreeSales = 0.0.obs;
  final _monthFourSales = 0.0.obs;
  final _monthFiveSales = 0.0.obs;

  /// total number of sales
  final _totalNumberOfSales = 0.obs;
  final _totalNumberOfSalesThisMonth = 0.obs;

  /// sales overview
  final _totalSales = "0.0".obs;
  final _thisMonthSales = "0.0".obs;
  final _lastMonthSales = "0.0".obs;
  final _thisMonthProfit = "0.0".obs;
  final _salesRate = "0.0%".obs;
  final _percentageSalesIncrease = "0.0%".obs;

  addSales({required List<SaleModel> sales}) {
    _sales.clear();

    /// add all sales
    _sales.addAll(sales);

    /// update total number of sales
    _totalNumberOfSales.value = _sales.length;

    /// update total number of sales this month
    _totalNumberOfSalesThisMonth.value = _sales.where((sale) => sale.createdAt.month == DateTime.now().month).length;

    /// make calculations
    makeCalculations();
    update();
  }

  updateMonthSales() {
    // go through all sales and update the sales for each month
    for (SaleModel sale in _sales) {
      if (sale.createdAt.month == DateTime.now().month) {
        _monthOneSales.value += sale.amount;
      } else if (sale.createdAt.month == DateTime.now().month - 1) {
        _monthTwoSales.value += sale.amount;
      } else if (sale.createdAt.month == DateTime.now().month - 2) {
        _monthThreeSales.value += sale.amount;
      } else if (sale.createdAt.month == DateTime.now().month - 3) {
        _monthFourSales.value += sale.amount;
      } else if (sale.createdAt.month == DateTime.now().month - 4) {
        _monthFiveSales.value += sale.amount;
      }
    }
  }

  updateActiveSale({required SaleModel sale}) {
    _activeSale.value = sale;
    update();
  }

  makeCalculations() {
    /// calculate the total sales this month and last month
    double totalSales = 0.0;
    double thisMonthSales = 0.0;
    double lastMonthSales = 0.0;
    double thisMonthProfit = 0.0;
    double salesRate = 0.0;
    double percentageSalesIncrease = 0.0;

    for (SaleModel sale in _sales) {
      totalSales += sale.amount;
      if (sale.createdAt.month == DateTime.now().month) {
        thisMonthSales += sale.amount;
        thisMonthProfit += sale.amount;
      } else if (sale.createdAt.month == DateTime.now().month - 1) {
        lastMonthSales += sale.amount;
      }
    }

    /// calculate the sales rate
    if (lastMonthSales > 0) {
      salesRate = ((thisMonthSales - lastMonthSales) / lastMonthSales) * 100;
    }

    // calculate percentage increase in sales
    if (lastMonthSales > 0) {
      percentageSalesIncrease = ((thisMonthSales - lastMonthSales) / lastMonthSales) * 100;
    }

    /// update the values
    _totalSales.value = totalSales.toStringAsFixed(2);
    _thisMonthSales.value = thisMonthSales.toStringAsFixed(2);
    _lastMonthSales.value = lastMonthSales.toStringAsFixed(2);
    _thisMonthProfit.value = thisMonthProfit.toStringAsFixed(2);
    _salesRate.value = "${salesRate.toStringAsFixed(2)}%";
    _percentageSalesIncrease.value = "${percentageSalesIncrease.toStringAsFixed(2)}%";
    update();
  }

  reset() {
    _sales.clear();
    _activeSale.value = null;
    _totalNumberOfSales.value = 0;
    _totalNumberOfSalesThisMonth.value = 0;
    _totalSales.value = "0.0";
    _thisMonthSales.value = "0.0";
    _lastMonthSales.value = "0.0";
    _thisMonthProfit.value = "0.0";
    _salesRate.value = "0.0%";
    _percentageSalesIncrease.value = "0.0%";
    update();
  }

  List<SaleModel> get sales => _sales;
  SaleModel? get activeSale => _activeSale.value;
  int get totalNumberOfSales => _totalNumberOfSales.value;
  int get totalNumberOfSalesThisMonth => _totalNumberOfSalesThisMonth.value;
  String get totalSales => _totalSales.value;
  String get thisMonthSales => _thisMonthSales.value;
  String get lastMonthSales => _lastMonthSales.value;
  String get thisMonthProfit => _thisMonthProfit.value;
  String get salesRate => _salesRate.value;
  String get percentageSalesIncrease => _percentageSalesIncrease.value;

  /// five months back data
  String get monthOneName => _monthOneName.value;
  String get monthTwoName => _monthTwoName.value;
  String get monthThreeName => _monthThreeName.value;
  String get monthFourName => _monthFourName.value;
  String get monthFiveName => _monthFiveName.value;

  /// five months back sales
  double get monthOneSales => _monthOneSales.value;
  double get monthTwoSales => _monthTwoSales.value;
  double get monthThreeSales => _monthThreeSales.value;
  double get monthFourSales => _monthFourSales.value;
  double get monthFiveSales => _monthFiveSales.value;
}
