import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

class ButtonWidget extends StatelessWidget {
  void Function() onTap;
  String path;
  double h;
  double w;
  double radius;

  ButtonWidget({
    required this.onTap,
    required this.path,
    required this.h,
    required this.w,
    required this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Dis.lr(5.w),
        padding: Dis.all(10),
        height: h,
        width: w,
        decoration: BoxDecoration(
          gradient: AppColors.mainBackgroundGradient,
          border: Border.all(
            color: AppColors.color2d256b,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: SvgPicture.asset(
          path,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
