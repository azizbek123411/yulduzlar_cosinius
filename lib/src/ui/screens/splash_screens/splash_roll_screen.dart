import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
class SplashRollScreen extends StatelessWidget {
  const SplashRollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image: AssetImage("assets/images/5241346.png"),),
        Text("Hisobdan xabardor bo'ling! Tug'ilgan kuningiz",style: AppTextStyle.instance.w500.copyWith(
          fontSize: FontSizeConst.instance.extraLargeFont,
          color: AppColors.colorFFF,

        ),
        textAlign: TextAlign.center,),
        Text("Hisobdan xabardor bo'ling! Tug'ilgan kuningiz sehrini hech qachon o'tkazib",style: AppTextStyle.instance.w600.copyWith(
          fontSize: FontSizeConst.instance.smallFont,
          color: AppColors.colorFFF60,
        ),
          textAlign: TextAlign.center,),

      ],
    );
  }
}
