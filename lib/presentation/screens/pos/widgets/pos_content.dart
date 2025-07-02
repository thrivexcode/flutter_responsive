import 'package:flutter/material.dart';

class PosContent extends StatelessWidget {
  const PosContent({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (i) => 'Item ${i + 1}');
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    final crossAxisCount = _getCrossAxisCount(size.width, orientation);

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) => _buildItemCard(context, index),
    );
  }

  Widget _buildItemCard(BuildContext context, int index) {
    final borderColor = Colors.grey.withValues(alpha: 0.8);
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.8),
              offset: const Offset(4, 4),
              blurRadius: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            '${(index + 1)}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }

  int _getCrossAxisCount(double width, Orientation orientation) {
    if (orientation == Orientation.landscape) {
      if (width >= 1280) return 4; // Large desktop
      if (width >= 1024) return 3; // Tablet landscape lebar
      if (width >= 768) return 2; // Tablet landscape sedang
      return 2; // Mobile landscape
    } else {
      if (width >= 768) return 3; // Tablet portrait
      return 2; // Mobile portrait
    }
  }
}
