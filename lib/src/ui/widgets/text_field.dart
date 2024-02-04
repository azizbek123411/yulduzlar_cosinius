import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("So'rov turi",style: AppTextStyle.instance.w600.copyWith(
          fontSize: FontSizeConst.instance.smallFont,
          color: AppColors.colorFFF,
        ),),
        Container(
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
            gradient: AppColors.mainBackgroundGradient,
            border: Border.all(color: AppColors.colorC042D7,width: 1,)
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:''
            ),
          ),
        )
      ],
    );
  }
}
