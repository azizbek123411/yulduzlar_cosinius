import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/artist_row.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/order_screens/finishing_time.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/text_field.dart';
import '../../../config/appcolors.dart';
import '../../../config/font_size.dart';
import '../../../repository/constants/text_style.dart';

class ForOthers extends StatefulWidget {
  const ForOthers({super.key});

  @override
  State<ForOthers> createState() => _ForMyselfState();
}

class _ForMyselfState extends State<ForOthers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            WBox(3.w),
            ButtonWidget(
              onTap: () {
                AppRouter.close(context);
              },
              path: 'assets/svg/Frame.svg',
              h: 40.h,
              w: 40.w,
              radius: 50,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w, tb: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ArtistRow(),
              HBox(20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "So'rov turi",
                    style: AppTextStyle.instance.w700.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF,
                    ),
                  ),
                  Container(
                    margin: Dis.only(tb: 8.h),
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      gradient: AppColors.mainBackgroundGradient,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: AppColors.color2d256b,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      maxLines: 1,
                      style: AppTextStyle.instance.w500.copyWith(
                          color: AppColors.colorFFF,
                          fontSize: FontSizeConst.instance.smallFont),
                      readOnly: true,
                      decoration: InputDecoration(
                        prefix: WBox(10.w),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.colorFFF,
                          ),
                          onPressed: () {},
                        ),
                        // contentPadding: Dis.all(20),
                        border: InputBorder.none,
                        hintText: "Bayram",
                        hintStyle: AppTextStyle.instance.w500.copyWith(
                          fontSize: FontSizeConst.instance.smallFont,
                          color: AppColors.colorFFF60,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              HBox(20.h),
              TextFields(
                prefix: WBox(10.w),
                title: "Kimdan(ismi):",
                hintText: 'Ismi',
                readOnly: false,
                suffixIcon: WBox(10.w),
                h: 48.h,
                w: double.infinity,
                radius: 40,
                maxLine: 1,
              ),
              HBox(20.h),
              TextFields(
                prefix: WBox(10.w),
                title: "Kimga(ismi):",
                hintText: 'Ismi',
                readOnly: false,
                suffixIcon: WBox(10.w),
                h: 48.h,
                w: double.infinity,
                radius: 40,
                maxLine: 1,
              ),
              HBox(20.h),
              TextFields(
                title: 'Videoda nima deyishni xohlaysiz?',
                hintText: "Bayram tabrigini yozing!",
                readOnly: false,
                suffixIcon: WBox(10.w),
                h: 216.h,
                w: double.infinity,
                radius: 10,
                prefix: WBox(10.w),
                maxLine: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 110.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Pulni qaytarish qanday ishlaydi?',
                style: AppTextStyle.instance.w600.copyWith(
                  fontSize: FontSizeConst.instance.smallFont,
                  color: AppColors.colorFFF,
                ),
              ),
            ),
            Padding(
              padding: Dis.only(lr: 20.w, bottom: 10.h),
              child: MainButton(
                  height: 48.h,
                  width: double.infinity,
                  title: "Keyingisi",
                  onTap: () {
                    AppRouter.go(
                      context,
                      const FinishingTime(),
                    );
                  },
                  radius: 50),
            ),
          ],
        ),
      ),
    );
  }
}
