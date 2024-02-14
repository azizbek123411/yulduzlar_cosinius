import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/main_nav_page.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/splash_pages/splash_screen%5D.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        MainNavPage.id: (context) => const MainNavPage(),
      },
    );
  }
}
