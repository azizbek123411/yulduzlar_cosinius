import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';

import '../../../config/appcolors.dart';

class ArtistCard extends StatelessWidget {
  void Function() onTap;
   ArtistCard({super.key,
   required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: Dis.only(bottom: 10, top: 10),
        padding: Dis.all(10),
        height: 140.h,
        width: 390.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.color2d256b,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(20),
          gradient: AppColors.mainBackgroundGradient,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/abror_dostov.jpg',
                height: 120.h,
                width: 120.w,
              ),
            ),
            WBox(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Abror Dostov',
                      style: AppTextStyle.instance.w600.copyWith(
                        fontSize: FontSizeConst.instance.largeFont,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Honanda",
                      style: AppTextStyle.instance.w500.copyWith(
                          fontSize: FontSizeConst.instance.smallFont,
                          color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      overflow: TextOverflow.clip ,
                      textAlign: TextAlign.end,
                      softWrap: true,
                      text: TextSpan(
                          style: AppTextStyle.instance.w500.copyWith(
                            fontSize: FontSizeConst.instance.smallFont,
                            color: Colors.white,
                          ),
                          text: "40\$",
                          children: [
                            TextSpan(
                                text: "    3-5 kun",
                                style: AppTextStyle.instance.w500.copyWith(
                                  fontSize: FontSizeConst.instance.smallFont,
                                  color: Colors.grey,
                                ))
                          ]),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      '  4.9 (237 izoh)',
                      style: AppTextStyle.instance.w500.copyWith(
                        fontSize: FontSizeConst.instance.smallFont,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
