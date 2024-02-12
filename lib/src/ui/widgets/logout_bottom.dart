import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../../repository/utils/app_padding.dart';

class LogOutBottom extends StatefulWidget {
  const LogOutBottom({super.key});

  @override
  State<LogOutBottom> createState() => _LogOutBottomState();
}

class _LogOutBottomState extends State<LogOutBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dis.only(
        lr: 15.w,
        bottom: 20.h,
      ),
      height: 280.h,
      decoration: BoxDecoration(
        color: AppColors.color2d256b,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Divider(
                color: AppColors.colorFFF60,
                thickness: 6,
                indent: 150.w,
                endIndent: 150.w,
              ),
            ),
            // HBox(10.h),
            Text(
              "Log Out",
              style: AppTextStyle.instance.w500.copyWith(
                fontSize: FontSizeConst.instance.extraLargeFont,
                color: Colors.red.shade900,
              ),
            ),
            const Divider(color: Color(0xff6f3fcd)),
            Text(
              "Rostan ham akkauntigizdan chiqmoqchimisiz?",
              style: AppTextStyle.instance.w400.copyWith(
                fontSize: FontSizeConst.instance.smallFont,
                color: AppColors.colorFFF60,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    AppRouter.close(context);
                  },
                  child: Container(
                      margin: Dis.lr(5.w),
                      padding: Dis.all(10),
                      height: 48.h,
                      width: 166.w,
                      decoration: BoxDecoration(
                        gradient: AppColors.mainBackgroundGradient,
                        border: Border.all(
                          color: const Color(0xff6f3fcd),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Orqaga',
                        style: AppTextStyle.instance.w500.copyWith(
                          fontSize: FontSizeConst.instance.mediumFont,
                          color: AppColors.colorFFF,
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
                MainButton(
                  height: 48.h,
                  width: 166.w,
                  title: "Ha",
                  onTap: () {
                    AppRouter.close(context);
                  },
                  radius: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
