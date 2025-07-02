import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_app_bar.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_cart_panel.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_content.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_menu_bar.dart';

class MobileLandscapeLayout extends StatelessWidget {
  const MobileLandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: PosAppBar(),
      ),
      drawer: const Drawer(child: PosMenuBar()),
      body: Row(
        children: const [
          Expanded(
            flex: 3,
            child: PosContent(),
          ),
          VerticalDivider(width: 1),
          SizedBox(
            width: 260,
            child: PosCartPanel(),
          ),
        ],
      ),
    );
  }
}
