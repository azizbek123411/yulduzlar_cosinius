import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

class SelectOrder extends StatelessWidget {
  String path;
  void Function() onTap;
  String title;

   SelectOrder({
    super.key,
    required this.title,
    required this.onTap,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Dis.only(tb: 10.h),
        height: 159.h,
        width: 353.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: AppColors.mainBackgroundGradient,
          border: Border.all(color: AppColors.color2d256b, width: 1),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(path),
              Text(
                title,
                style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.mediumFont,
                    color: AppColors.colorFFF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
