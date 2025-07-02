import 'package:flutter/material.dart';
import 'package:flutter_responsive_fix/core/theme/theme_notifier.dart';
import 'package:flutter_responsive_fix/presentation/screens/pos/pos_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeNotifier()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PosScreen(),
    );
  }
}
