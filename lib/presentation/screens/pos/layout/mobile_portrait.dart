import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_app_bar.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_cart_panel.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_content.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/widgets/pos_menu_bar.dart';

class MobilePortraitLayout extends StatelessWidget {
  const MobilePortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(52),
        child: PosAppBar(),
      ),
      drawer: const Drawer(child: PosMenuBar()),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PosContent(),
            ),
          ),
          Divider(height: 1),
          SizedBox(
            height: 300,
            child: PosCartPanel(),
          ),
        ],
      ),
    );
  }
}
