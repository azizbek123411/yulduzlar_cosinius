import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/home_page_widgets/buttons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: Dis.only(left: 10.w,tb: 5.h),
        child: SvgPicture.asset(
          'assets/svg/vector.svg',
          height: 32.h,
          width: 32.w,
        ),
      ),
      title: Text(
        'Super Stars',
        style: AppTextStyle.instance.w500.copyWith(
          fontSize: FontSizeConst.instance.mediumFont,
          color: AppColors.colorC042D7,
        ),
      ),
    actions: [
      ButtonWidget(onTap: (){}, path: 'assets/svg/search-normal.svg'),
      ButtonWidget(onTap: (){}, path: 'assets/svg/notification-bing.svg'),
    ],
    );
  }
}
