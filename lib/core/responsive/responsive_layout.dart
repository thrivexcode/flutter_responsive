import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilePortrait;
  final Widget mobileLandscape;
  final Widget tabletPortrait;
  final Widget tabletLandscape;
  final Widget desktopPortrait;
  final Widget desktopLandscape;
  const ResponsiveLayout({
    super.key,
    required this.mobilePortrait,
    required this.mobileLandscape,
    required this.tabletPortrait,
    required this.tabletLandscape,
    required this.desktopPortrait,
    required this.desktopLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final isPortrait = media.orientation == Orientation.portrait;

    final isMobile = width < 768;
    final isTablet = width >= 768 && width < 1024;
    final isDesktop = width >= 1024;

    Widget selectedLayout;

    if (isDesktop) {
      selectedLayout = isPortrait ? desktopPortrait : desktopLandscape;
    } else if (isTablet) {
      selectedLayout = isPortrait ? tabletPortrait : tabletLandscape;
    } else {
      selectedLayout = isPortrait ? mobilePortrait : mobileLandscape;
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      child: KeyedSubtree(
        key: ValueKey(
          '${isMobile ? "mobile" : isTablet ? "tablet" : "desktop"}-${isPortrait ? "portrait" : "landscape"}',
        ),
        child: selectedLayout,
      ),
    );
  }
}
