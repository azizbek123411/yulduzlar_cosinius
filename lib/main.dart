import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/main_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainNavPage(),
    );
  }
}


