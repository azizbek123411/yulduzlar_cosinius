import 'package:flutter/material.dart';
class MainNavPage extends StatefulWidget {
  const MainNavPage({super.key});

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(),
    );
  }
}
