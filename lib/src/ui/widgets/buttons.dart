import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

class ButtonWidget extends StatelessWidget {
  void Function() onTap;
  String path;

  ButtonWidget({
    required this.onTap,
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Dis.lr(5.w),
        padding: Dis.all(10),
        height: 46.h,
        width: 44.w,
        decoration: BoxDecoration(
          gradient: AppColors.mainBackgroundGradient,
          border: Border.all(
            color: AppColors.color2d256b,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(60),
        ),
        child: SvgPicture.asset(
          path,
          height: 22.h,
          width: 22.w,
        ),
      ),
    );
  }
}
