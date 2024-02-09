import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/text_field.dart';

import '../../../config/appcolors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Profil",
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.largeFont,
            color: AppColors.colorFFF,
          ),
        ),
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
              radius: 50,
            )
          ],
        ),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w),
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
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
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    gradient: AppColors.mainButtonGradient,
                    border: Border.all(color: AppColors.colorC042D7,),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.colorFFF,
                        size: 16,
                      ),),
                ),
              ]),
              TextFields(title: "Ism", hintText: "Abror", readOnly: false, suffixIcon: WBox(0), h: 48.h, w: double.infinity, radius: 40, prefix: WBox(15.w), maxLine: 1),
              HBox(20.h),
              TextFields(title: "Familiya", hintText: "Do'stov", readOnly: false, suffixIcon: WBox(0), h: 48.h, w: double.infinity, radius: 40, prefix: WBox(15.w), maxLine: 1),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding:  Dis.only(lr: 20.0,bottom: 10.h),
        child: MainButton(height: 48.h, width: double.infinity, title: "Saqlash", onTap: (){AppRouter.close(context);}, radius:  50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
