import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_app_bar.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_cart_panel.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_content.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_menu_bar.dart';

class DesktopLandscapeLayout extends StatelessWidget {
  const DesktopLandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: PosAppBar(),
      ),
      body: Row(
        children: [
          SizedBox(width: 260, child: PosMenuBar()),
          VerticalDivider(width: 1),
          Expanded(flex: 2, child: PosContent()),
          VerticalDivider(width: 1),
          SizedBox(width: 320, child: PosCartPanel()),
        ],
      ),
    );
  }
}
