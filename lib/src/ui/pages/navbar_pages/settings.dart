import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/settings_screens/proifile_screen.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/settings_screens/security_page.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/settings_screens/support_page.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/language_bottom_sheet.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/list_tile.dart';

import '../../../repository/utils/app_padding.dart';
import '../../widgets/logout_bottom.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Sozlamalar",
          style: AppTextStyle.instance.w700.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
              color: AppColors.colorFFF),
        ),
      ),
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.all(20),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/abror_dostov.jpg',
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
              HBox(10.h),
              Text(
                "Abror Dostov",
                style: AppTextStyle.instance.w600.copyWith(
                    color: AppColors.colorFFF,
                    fontSize: FontSizeConst.instance.mediumFont),
              ),
              Text(
                "+99891 999 99 99",
                style: AppTextStyle.instance.w400.copyWith(
                    color: AppColors.colorFFF60,
                    fontSize: FontSizeConst.instance.smallFont),
              ),
              HBox(10.h),
              Divider(
                thickness: 2,
                color: AppColors.color2d256b,
              ),
              HBox(10.h),
              ListTilee(
                title: "Profil",
                actionIcon: IconButton(
                  onPressed: () {
                    AppRouter.go(context, const ProfileScreen(),);
                  },
                  icon: Icon(Icons.keyboard_arrow_right_sharp,
                      size: 24, color: AppColors.colorFFF),
                ),
                leading: ButtonWidget(
                    onTap: () {},
                    path: "assets/svg/profile-circle.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
              ListTilee(
                title: "Ilova tili",
                actionIcon: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context, builder: (BuildContext context) {
                      return const LanguageBottomSheet();
                    });
                  },
                  icon: Icon(Icons.keyboard_arrow_right_sharp,
                      size: 24, color: AppColors.colorFFF),
                ),
                leading: ButtonWidget(
                    onTap: () {},
                    path: "assets/svg/language.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
              ListTilee(
                title: "Dark mode",
                actionIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_right_sharp,
                      size: 24, color: AppColors.colorFFF),
                ),
                leading: ButtonWidget(
                    onTap: () {},
                    path: "assets/svg/dark_them.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
              ListTilee(
                title: "Xavfsizlik",
                actionIcon: IconButton(
                  onPressed: () {
                    AppRouter.go(context, const SecurityPage(),);
                  },
                  icon: Icon(Icons.keyboard_arrow_right_sharp,
                      size: 24, color: AppColors.colorFFF),
                ),
                leading: ButtonWidget(
                    onTap: () {},
                    path: "assets/svg/shield-security.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
              ListTilee(
                title: "Yordam markazi",
                actionIcon: IconButton(
                  onPressed: () {
                    AppRouter.go(context, const SupportPage(),);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    size: 24,
                    color: AppColors.colorFFF,
                  ),
                ),
                leading: ButtonWidget(
                    onTap: () {},
                    path: "assets/svg/support.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
              ListTilee(
                title: "Log Out",
                actionIcon: IconButton(
                  onPressed: () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return const LogOutBottom();
                    }
                  );},
                  icon: Icon(Icons.keyboard_arrow_right_sharp,
                      size: 24, color: AppColors.colorFFF),
                ),
                leading: ButtonWidget(
                    onTap: () {

                    },
                    path: "assets/svg/logout-2 1.svg",
                    h: 40.h,
                    w: 40.w,
                    radius: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
