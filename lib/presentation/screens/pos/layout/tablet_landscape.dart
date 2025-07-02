import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_app_bar.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_cart_panel.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_content.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_menu_bar.dart';

class TabletLandscapeLayout extends StatelessWidget {
  const TabletLandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: PosAppBar(),
      ),
      body: Row(
        children: const [
          SizedBox(
            width: 200,
            child: SafeArea(child: PosMenuBar()),
          ),
          VerticalDivider(width: 1),
          Expanded(
            flex: 5,
            child: PosContent(),
          ),
          VerticalDivider(width: 1),
          SizedBox(
            width: 320,
            child: PosCartPanel(),
          ),
        ],
      ),
    );
  }
}
