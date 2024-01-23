import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/direct_page.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/profile_page.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/video_play_page.dart';

import '../../screens/navbar_screens/navbar.dart';
import 'home_page.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({super.key});

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  List pages = [
    Homepage(),
    VideoPlay(),
    DirectPage(),
    ProfilePage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: const AppNavbar()
    );
  }
}
