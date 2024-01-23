import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../../config/appcolors.dart';
import '../../../repository/utils/app_padding.dart';
class AppNavbar extends StatefulWidget {
  const AppNavbar({super.key});

  @override
  State<AppNavbar> createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  int currentIndex=0;
  void selectedIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.all(20.h),
      height: 64.h,
      width: 312.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(20.w),
        gradient: const LinearGradient(colors: [
          Color(0xff624fbb),
          Color(0xff190f3b),
        ]),
      ),
      child: BottomNavigationBar(
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
