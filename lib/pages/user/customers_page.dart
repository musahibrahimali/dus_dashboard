import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ContentView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageHeader(
            title: 'Users',
            description: 'List of users who can sign in to this dashboard.',
          ),
          const Gap(16.0),
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: ListView.separated(
                itemCount: dummyUsers.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final user = dummyUsers[index];
                  return ListTile(
                    title: Text(
                      user.name,
                      style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      user.role,
                      style: theme.textTheme.labelMedium,
                    ),
                    trailing: const Icon(Icons.navigate_next_outlined),
                    onTap: () {
                      CustomerPageRoute(userId: user.userId).go(context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
