import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../repository/utils/app_padding.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.only(right: 8.w,),
      width: 112.w,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: AppColors.mainBackground,
        border: Border.all(
          color: AppColors.color2d256b,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          'Mashhurlar',
          style: AppTextStyle.instance.w600.copyWith(
            fontSize: FontSizeConst.instance.smallFont,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
