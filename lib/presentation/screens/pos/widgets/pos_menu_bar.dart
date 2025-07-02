import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/core/utils/formatter_util.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PosMenuBar extends StatelessWidget {
  const PosMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    // responsive
    final width = MediaQuery.of(context).size.width;
    final isTabletUp = width >= 768;
    final isMobileUp = width < 768;

    final theme = Theme.of(context);
    final baseColor = theme.colorScheme.secondary.withValues(alpha: 0.6);

    final activeTransactions = List.generate(5, (i) {
      return {
        'id': 'TX-20240624-00$i',
        'total': 50000 + i * 10000,
      };
    });

    final limitedTransactions = activeTransactions.take(3).toList();

    return Container(
      width: 260,
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isMobileUp) ...[
              // logo
              Container(
                width: 126,
                height: 28,
                decoration: BoxDecoration(color: baseColor),
              ),
              const SizedBox(height: 8),
              const Divider(),
            ],
            if (isTabletUp) ...[
              const SizedBox(height: 16),
              Text(
                'CATEGORIES',
                style: theme.textTheme.bodyLarge,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  children: [
                    _buildNavItem(context,
                        icon: PhosphorIcons.bowlFood(), label: 'All'),
                    _buildNavItem(context,
                        icon: PhosphorIcons.hamburger(), label: 'Food'),
                    _buildNavItem(context,
                        icon: PhosphorIcons.coffee(), label: 'Drinks'),
                    _buildNavItem(context,
                        icon: PhosphorIcons.iceCream(), label: 'Desserts'),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 16),
              Text('ACTIVE TRANSACTIONS', style: theme.textTheme.bodyLarge),
              const SizedBox(height: 8),
              Expanded(
                child: ListView(
                  children: [
                    // show 3 transaction active
                    ...limitedTransactions
                        .map((tx) => _buildTransactionItem(context, tx)),
                  ],
                ),
              ),
            ],
            if (isTabletUp) ...[
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              Text('OTHER MENUS', style: theme.textTheme.bodyLarge),
            ],
            Expanded(
              child: ListView(
                children: [
                  _buildNavItem(context,
                      icon: PhosphorIcons.receipt(),
                      label: 'Active Transactions'),
                  _buildNavItem(context,
                      icon: PhosphorIcons.creditCard(), label: 'Payments'),
                  _buildNavItem(context,
                      icon: PhosphorIcons.package(),
                      label: 'Product Management'),
                  _buildNavItem(context,
                      icon: PhosphorIcons.chartBar(), label: 'Reports'),
                  _buildNavItem(context,
                      icon: PhosphorIcons.gear(), label: 'Settings'),
                  const Divider(),
                  _buildNavItem(context,
                      icon: PhosphorIcons.signOut(), label: 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionItem(BuildContext context, Map<String, dynamic> tx) {
    final theme = Theme.of(context);
    return ListTile(
      dense: true,
      leading: const Icon(Icons.receipt_long, size: 20),
      title: Text(
        tx['id'].toString(),
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        FormatterUtil.currency(tx['total'] as num),
      ),
      trailing: const Icon(Icons.play_arrow, size: 20, color: Colors.green),
      onTap: () {
        // TODO: Resume transaction
      },
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: PhosphorIcon(icon, size: 20),
      title: Text(label, style: Theme.of(context).textTheme.bodyMedium),
      onTap: onTap,
    );
  }
}
