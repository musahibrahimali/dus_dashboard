import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    helperMethods.getAdminProfile();
    helperMethods.getAdmins();
    helperMethods.getEmployees();
    helperMethods.getProducts();
    helperMethods.getCustomers();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: const SafeArea(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
