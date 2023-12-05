import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({
    super.key,
    required this.customer,
  });

  final CustomerModel customer;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ContentView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              customer.firstName,
              style: theme.textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Text('role: ${customer.role}'),
            SelectionArea(
              child: Text('userId: ${customer.id}'),
            ),
            const Gap(16),
            ElevatedButton.icon(
              icon: const Icon(Icons.navigate_before),
              label: const Text('Back'),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
