import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../../config/font_size.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/space.dart';
class ArtistRow extends StatelessWidget {
  const ArtistRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "assets/images/abror_dostov.jpg",
            height: 56.h,
            width: 56.w,
            fit: BoxFit.cover,
          ),
        ),
        WBox(10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Abror Do'stov",
              style: AppTextStyle.instance.w700.copyWith(
                fontSize: FontSizeConst.instance.largeFont,
                color: Colors.white,
              ),
            ),
            Text(
              "Xonanda",
              style: AppTextStyle.instance.w500.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
