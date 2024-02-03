import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.only(tb: 8.h),
      padding: Dis.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColors.mainBackgroundGradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.color2d256b, width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/abror_dostov.jpg',
                      height: 44.h,
                      width: 44.w,
                    ),
                  ),
                  WBox(8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elbek',
                        style: AppTextStyle.instance.w700.copyWith(
                            fontSize: FontSizeConst.instance.smallFont,
                            color: AppColors.colorFFF),
                      ),
                      Text(
                        '22.12.2022 | 11:11',
                        style: AppTextStyle.instance.w500.copyWith(
                            fontSize: FontSizeConst.instance.extraSmallFont,
                            color: AppColors.colorFFF60),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: AppColors.colorFFF,
                  size: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: AppColors.colorFFF,
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: AppColors.colorFFF,
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: AppColors.colorFFF,
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: AppColors.colorFFF,
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: AppColors.colorFFF,
                  size: 26,
                ),
              ),
            ],
          ),
          Text(
            'Choosing the right font for a mobile application design, especially for conveying congratulations, depends on the overall design aesthetic, the target audience, and the brand personality audience, and the brand personality.',
            style: AppTextStyle.instance.w500.copyWith(
                fontSize: FontSizeConst.instance.smallFont,
                color: AppColors.colorFFF),
          )
        ],
      ),
    );
  }
}
