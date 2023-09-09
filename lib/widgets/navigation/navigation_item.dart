import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

/// Navigation items for the app [NavigationItem]
enum NavigationItem {
  // sales(iconData: Icons.store_mall_directory_outlined),
  dashboard(iconData: Icons.dashboard_outlined, label: 'Dashboard'),
  products(iconData: LineAwesomeIcons.alternate_store, label: 'Products'),
  customers(iconData: LineAwesomeIcons.users, label: 'Customers'),
  employees(iconData: LineAwesomeIcons.users_cog, label: 'Employees'),
  register(iconData: LineAwesomeIcons.user_check, label: 'Auth'),
  ;

  const NavigationItem({
    required this.iconData,
    required this.label,
  });
  final IconData iconData;
  final String label;
}
