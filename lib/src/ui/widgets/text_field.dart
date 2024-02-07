import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../repository/utils/app_padding.dart';

class TextFields extends StatelessWidget {
  String title;
  String hintText;
  bool readOnly;
  Widget suffixIcon;
  double h;
  double w;
  double radius;
  Widget prefix;
  int maxLine;

  TextFields({
    super.key,
    required this.title,
    required this.hintText,
    required this.readOnly,
    required this.suffixIcon,
    required this.h,
    required this.w,
    required this.radius,
    required this.prefix,
    required this.maxLine
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.instance.w700.copyWith(
            fontSize: FontSizeConst.instance.smallFont,
            color: AppColors.colorFFF,
          ),
        ),
        Container(
          margin: Dis.only(tb: 8.h),
          width: w,
          height: h,
          decoration: BoxDecoration(
              gradient: AppColors.mainBackgroundGradient,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(
                color: AppColors.color2d256b,
                width: 1,
              ),),
          child: TextField(
            maxLines: maxLine,
            style: AppTextStyle.instance.w500.copyWith(
              color: AppColors.colorFFF,
              fontSize: FontSizeConst.instance.smallFont
            ),
            readOnly: readOnly,
            decoration: InputDecoration(
              prefixIcon: prefix,
              suffix: suffixIcon,
              // contentPadding: Dis.all(20),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: AppTextStyle.instance.w500.copyWith(
                fontSize: FontSizeConst.instance.smallFont,
                color: AppColors.colorFFF60,
              ),
            ),
          ),
        )
      ],
    );
  }
}
