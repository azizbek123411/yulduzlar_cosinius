// ignore_for_file: unused_result

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../../../config/font_size.dart';
import '../../../config/router.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
import '../../../repository/utils/space.dart';

class OpenMessageWidget extends StatelessWidget {
  const OpenMessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: Dis.only(lr: 24.w, tb: 24.h),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: AppColors.color121433,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Super Stars qanday loyiha",
            style: AppTextStyle.instance.w700.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
                color: CupertinoColors.white),
          ),
          HBox(4.h),
          Text(
            "16.12.2024 | 13:21",
            style: AppTextStyle.instance.w400.copyWith(
                fontSize: FontSizeConst.instance.smallFont,
                color: Colors.grey.shade400),
          ),
          HBox(8.h),
          Text(
            "Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha",
            style: AppTextStyle.instance.w400.copyWith(
              fontSize: FontSizeConst.instance.mediumFont,
              color: Colors.grey.shade400,
            ),
          ),
          HBox(49.h),
          MainButton(
            height: 48.h,
            width: double.infinity,
            title: "Davom etish",
            onTap: () {
              AppRouter.close(context);
            },
            radius: 50,
          )
        ],
      ),
    );
  }
}
