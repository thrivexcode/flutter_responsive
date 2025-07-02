import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PosAppBar extends StatelessWidget {
  const PosAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseColor = theme.colorScheme.secondary.withValues(alpha: 0.6);
    // responsive

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final isMobile = width < 768;
    final isSmallMobile = width < 425;
    final isTablet = width >= 768 && width < 1024;
    final isDesktop = width >= 1024;

    return AppBar(
      backgroundColor: Colors.grey[100],
      title: Row(
        children: [
          // logo
          _buildLogo(baseColor, isPortrait),
          const Spacer(),

          if (isTablet || isDesktop) ...[
            _buildSearchBox(width, baseColor),
            const Spacer(),
            _buildIcon(
              PhosphorIcons.arrowClockwise(),
              width,
              baseColor,
            ),
            const SizedBox(width: 16),
          ],
          if (isMobile) ...[
            _buildIcon(
              PhosphorIcons.magnifyingGlass(),
              width,
              baseColor,
            ),
          ],
          if (!isSmallMobile) ...[
            SizedBox(width: 8),
            _buildIcon(
              PhosphorIcons.gear(PhosphorIconsStyle.fill),
              width,
              baseColor,
            ),
          ],
          if (isDesktop) ...[
            const SizedBox(width: 16),
            Container(
              width: 120,
              height: 42,
              decoration: BoxDecoration(color: baseColor),
            )
          ]
        ],
      ),
    );
  }

  Widget _buildLogo(Color color, bool isPortrait) {
    return Container(
      width: 126,
      height: 28,
      decoration: BoxDecoration(color: color),
      alignment: Alignment.center,
      child: Text(
        isPortrait ? "Portrait" : "Landscape",
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildSearchBox(double width, Color color) {
    return Container(
      width: _getSearchWidth(width),
      height: 42,
      decoration: BoxDecoration(color: color),
      child: Center(
        child: Text(
          width.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, double width, Color color) {
    return IconButton(
      onPressed: () {}, // TODO: add functionality
      icon: PhosphorIcon(icon, size: _getSizeIcon(width), color: color),
    );
  }

  double _getSizeIcon(double width) {
    if (width >= 1024) return 28;
    if (width >= 768) return 24;
    return 20;
  }

  double _getSearchWidth(double width) {
    if (width >= 1024) return 500; // desktop
    if (width >= 768) return 350; // tablet
    return 0; // mobile
  }
}
