import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../appbar_screens/not_bottomsheet.dart';

class NotCard extends StatelessWidget {
  const NotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showModalBottomSheet(
            backgroundColor: AppColors.color121433,
            context: context,
            builder: (context) {
              return const OpenMessageWidget();
            });
      },
      child: Container(
        margin: Dis.only(tb: 8),
        padding: Dis.all(16),
        height: 150.h,
        width: 400.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: AppColors.mainBackground,
            border: Border.all(color: AppColors.color2d256b)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ColoredBox(
                color: AppColors.colorC042D7,
                child: SizedBox(
                  height: 150.h,
                  width: 4.w,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Super Stars qanday loyiha',
                  style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.mediumFont,
                    color: Colors.white,
                  ),
                ),
                Flexible(
                  child: Text(
                    'Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha',
                    style: AppTextStyle.instance.w400.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: Colors.grey,
                      letterSpacing: -0.22,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
