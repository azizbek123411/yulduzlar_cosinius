import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/dialog.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../navbar_pages/main_nav_page.dart';

class FindFace extends StatefulWidget {
  const FindFace({super.key});

  @override
  State<FindFace> createState() => _FindFaceState();
}

class _FindFaceState extends State<FindFace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            WBox(2.w),
            ButtonWidget(
                onTap: () {
                  AppRouter.close(context);
                },
                path: "assets/svg/Frame.svg",
                h: 40.h,
                w: 40.w,
                radius: 50)
          ],
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Yuzni aniqlash",
          style: AppTextStyle.instance.w600.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
              color: AppColors.colorFFF),
        ),
      ),
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 16.w, tb: 10.h),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HBox(30.h),
                Text(
                  "Yuzni aniqlash",
                  style: AppTextStyle.instance.w600.copyWith(
                      fontSize: FontSizeConst.instance.mediumFont,
                      color: AppColors.colorFFF),
                ),
                Text(
                  "Hisobingizni yaratish uchun yuzni tanish qo'shing",
                  style: AppTextStyle.instance.w500.copyWith(
                      fontSize: FontSizeConst.instance.extraSmallFont,
                      color: AppColors.colorFFF60),
                ),
                Container(
                  margin: Dis.only(top: 20.h),
                  height: 458.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.color2d256b.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: SvgPicture.asset("assets/svg/1211.svg"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: Dis.only(lr: 16.w, tb: 10.h),
        child: MainButton(
            height: 48.h,
            width: double.infinity,
            title: "Davom etish",
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => ShowDialog(
                    radius: 32,
                    subtitle:
                        "Sizning hisobingiz foydalanishga tayyor. Siz bir necha soniya ichida Bosh sahifaga yo'naltirilasiz",
                    title: "Tabriklaymiz",
                    onTap: () {},
                    imagePath: "assets/images/_fpdl 1.png",
                    w: 345.w,
                    h: 500.h),
              ).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainNavPage(),),),);
            },
            radius: 50),
      ),
    );
  }
}
