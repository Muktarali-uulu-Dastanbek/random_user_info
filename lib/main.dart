import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/features/presentation/screens/user_tabBar_screen.dart';
import 'package:tapbarr_exemple/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: UserTabBarScreen(),
    );
  }
}
