import 'package:collection/collection.dart';
import 'package:dus_dashboard/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

const routerInitialLocation = '/';
const routerDashboardLocation = '/dashboard';
const routerAuthAdminLocation = '/auth';
const routerUsersLocation = '/users';
const routerUserLocation = ':userId';
const routerEmployeesLocation = '/employees';
const routerEmployeeLocation = ':id';
const routerProductsLocation = '/products';
const routerProductLocation = ':id';

/// [GoRouter] for the entire app
final router = GoRouter(
  routes: $appRoutes,
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const NotFoundPage();
  },
  debugLogDiagnostics: kDebugMode,
  initialLocation: routerInitialLocation,
);

/// wrapper for the entire app
@TypedStatefulShellRoute<ShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    /// Dashboard Route
    TypedStatefulShellBranch(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<DashboardRoute>(
          path: routerInitialLocation,
        ),
      ],
    ),

    /// products Route
    TypedStatefulShellBranch(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ProductsPageRoute>(
          path: routerProductsLocation,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<ProductPageRoute>(
              path: routerProductLocation,
            ),
          ],
        ),
      ],
    ),

    /// users Route
    TypedStatefulShellBranch(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<CustomersPageRoute>(
          path: routerUsersLocation,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<CustomerPageRoute>(
              path: routerUserLocation,
            ),
          ],
        ),
      ],
    ),

    /// employees Route
    TypedStatefulShellBranch(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<EmployeesPageRoute>(
          path: routerEmployeesLocation,
          routes: <TypedRoute<RouteData>>[
            TypedGoRoute<EmployeePageRoute>(
              path: routerEmployeeLocation,
            ),
          ],
        ),
      ],
    ),

    /// Register Admin Route
    TypedStatefulShellBranch(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<RegisterAdminRoute>(
          path: routerAuthAdminLocation,
        ),
      ],
    ),
  ],
)

/// [ShellRouteData] for the entire app
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavigation(
      navigationShell: navigationShell,
    );
  }
}

/// [DashboardRoute] for the dashboard
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DashBoardPage();
  }
}

/// [AdminAuthPage] for the dashboard
class RegisterAdminRoute extends GoRouteData {
  const RegisterAdminRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdminAuthPage();
  }
}

/// [CustomersPage] for list of users
class CustomersPageRoute extends GoRouteData {
  const CustomersPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CustomersPage();
  }
}

///[CustomerPage] for individual user
class CustomerPageRoute extends GoRouteData {
  const CustomerPageRoute({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final user = dummyUsers.firstWhereOrNull((e) => e.userId == userId);
    return user == null ? const NotFoundPage() : CustomerPage(user: user);
  }
}

/// [ProductsPage] for list of products
class ProductsPageRoute extends GoRouteData {
  const ProductsPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProductsPage();
  }
}

/// [ProductPage] for individual product
class ProductPageRoute extends GoRouteData {
  const ProductPageRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final user = dummyUsers.firstWhereOrNull((e) => e.userId == id);
    return user == null ? const NotFoundPage() : ProductPage(product: user);
  }
}

/// [EmployeesPage] for list of products
class EmployeesPageRoute extends GoRouteData {
  const EmployeesPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EmployeesPage();
  }
}

/// [EmployeePage] for individual product
class EmployeePageRoute extends GoRouteData {
  const EmployeePageRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final employee = dummyUsers.firstWhereOrNull((e) => e.userId == id);
    return employee == null ? const NotFoundPage() : EmployeePage(employee: employee);
  }
}
