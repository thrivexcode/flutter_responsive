import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/core/responsive/responsive_layout.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/desktop_landscape.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/desktop_portrait.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/mobile_landscape.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/mobile_portrait.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/tablet_landscape.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/layout/tablet_portrait.dart';

class PosScreen extends StatelessWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ResponsiveLayout(
        mobilePortrait: MobilePortraitLayout(),
        mobileLandscape: MobileLandscapeLayout(),
        tabletPortrait: TabletPortraitLayout(),
        tabletLandscape: TabletLandscapeLayout(),
        desktopPortrait: DesktopPortraitLayout(),
        desktopLandscape: DesktopLandscapeLayout(),
      ),
    );
  }
}
