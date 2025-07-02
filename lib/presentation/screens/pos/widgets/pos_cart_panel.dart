import 'package:flutter/material.dart';

class PosCartPanel extends StatelessWidget {
  const PosCartPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseColor = theme.colorScheme.secondary.withValues(alpha: 0.6);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Logo
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              width: 120,
              height: 28,
              decoration: BoxDecoration(
                color: baseColor,
              ),
            ),
          ),
          // List of items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 28,
                  decoration: BoxDecoration(color: baseColor),
                ),
              ),
            ),
          ),
          const Divider(),
          const SizedBox(height: 8),
          // Action buttons
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                _buildActionButton(baseColor),
                const SizedBox(width: 16),
                _buildActionButton(baseColor),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildActionButton(Color color) {
    return Expanded(
      child: Container(
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
