import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';

import '../../config/font_size.dart';
import '../../repository/constants/text_style.dart';

class MainButton extends StatelessWidget {
  double height;
  double width;
  String title;
  void Function() onTap;
  double radius;

  MainButton(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.onTap,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              color: AppColors.colorC042D7.withOpacity(0.4),
              blurRadius: 40.0,spreadRadius: 15
            )
          ],
          borderRadius: BorderRadius.circular(radius),
          gradient: AppColors.mainButtonGradient,
          border: Border.all(color: AppColors.colorC042D7, width: 1),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.instance.w600.copyWith(
              fontSize: FontSizeConst.instance.mediumFont,
              color: AppColors.colorFFF,
            ),
          ),
        ),
      ),
    );
  }
}
