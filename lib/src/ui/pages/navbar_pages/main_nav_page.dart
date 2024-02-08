import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/my_orders.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/profile_page.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/video_play_page.dart';
import '../../../config/appcolors.dart';
import '../../../repository/utils/app_padding.dart';
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

  List pages = [
    const Homepage(),
    const VideoPlay(),
    const MyOrders(),
    const ProfilePage(),
  ];


  int currentIndex=0;
  void selectedIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar:  appNavbar(context),
      extendBody: true,
    );
  }




  Widget appNavbar(BuildContext context) {
    return Container(
      margin: Dis.all(20.h),
      height: 64.h,
      width: 312.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color2d256b,width: 2),
        borderRadius: BorderRadius.circular(20.w),
        gradient: const LinearGradient(colors: [
          Color(0xff624fbb),
          Color(0xff190f3b),
        ]),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: currentIndex,
        onTap: (index) {
          selectedIndex(index);
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: SvgPicture.asset(
                "assets/svg/element-plus.svg",
                color: currentIndex == 0
                    ? AppColors.colorFFF
                    : AppColors.colorFFF60,
              ),
              label: ''),
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: SvgPicture.asset(
              "assets/svg/video-play.svg",
              color: currentIndex == 1
                  ? AppColors.colorFFF
                  : AppColors.colorFFF60,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: SvgPicture.asset(
              "assets/svg/direct.svg",
              color: currentIndex == 2
                  ? AppColors.colorFFF
                  : AppColors.colorFFF60,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: SvgPicture.asset(
                "assets/svg/user-octagon.svg",
                color: currentIndex == 3
                    ? AppColors.colorFFF
                    : AppColors.colorFFF60,
              ),
              label: ""),
        ],
      ),
    );
  }
}
