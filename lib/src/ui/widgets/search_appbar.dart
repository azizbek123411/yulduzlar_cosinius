import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../config/appcolors.dart';
import '../../config/font_size.dart';
import '../../repository/constants/text_style.dart';
import '../../repository/utils/app_padding.dart';

class SearchAppBar extends StatelessWidget {
  SearchAppBar({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.only(lr: 20.w, top: 50.h),
      width: 350.w,
      height: 45.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColors.colorC042D7,
            width: 1,
          ),
          gradient: AppColors.mainBackgroundGradient,),
      child: Center(
        child: TextField(
          controller: controller,
          style: AppTextStyle.instance.w600.copyWith(
            fontSize: FontSizeConst.instance.mediumFont,
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            contentPadding: Dis.only(top: 3.h),
            prefixIcon: Padding(
              padding: Dis.all(10),
              child: SvgPicture.asset(
                'assets/svg/search-normal.svg',
                height: 20.h,
                width: 20.w,
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
