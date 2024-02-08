import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../config/appcolors.dart';
import '../../config/font_size.dart';
import '../../repository/constants/text_style.dart';
import '../../repository/utils/app_padding.dart';
import '../../repository/utils/space.dart';
class ChattextField extends StatelessWidget {
  TextEditingController controller;
   ChattextField({super.key,
  required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  Dis.only(lr:20.w,bottom: 10.h),
      child: SizedBox(
        height: 52.h,
        width: 500.w,
        child: Container(
          // margin: Dis.only(tb: 8.h),
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
            controller: controller,
            maxLines: 1,
            style: AppTextStyle.instance.w500.copyWith(
                color: AppColors.colorFFF,
                fontSize: FontSizeConst.instance.smallFont),
            decoration: InputDecoration(
              prefix: WBox(10.w),
              prefixIcon: IconButton(onPressed: (){},
                icon: SvgPicture.asset("assets/svg/gallery.svg"),),
              suffixIcon: IconButton(
                icon: Icon(Icons.send_rounded,color: AppColors.colorFFF,size: 24,),
                onPressed: () {},
              ),
              border: InputBorder.none,
              hintText: "Xabar yozing...",
              hintStyle: AppTextStyle.instance.w500.copyWith(
                fontSize: FontSizeConst.instance.smallFont,
                color: AppColors.colorFFF,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
