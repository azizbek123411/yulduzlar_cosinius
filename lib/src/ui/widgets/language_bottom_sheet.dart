import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';

import '../../repository/utils/app_padding.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dis.all(13),
      height: 280.h,
      decoration: BoxDecoration(
        color: AppColors.color2d256b,
        borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
      ),
      child: Center(
        child: Column(
          children: [
            HBox(10.h),
            Text("Ilova tili",style: AppTextStyle.instance.w700.copyWith(
              fontSize: FontSizeConst.instance.extraLargeFont,
              color: AppColors.colorFFF,
            ),),

            ListTile(
              leading: IconButton(onPressed: (){},icon: Icon(Icons.radio_button_checked_sharp,color: AppColors.colorFFF),),
              title: Text("O'zbekcha (UZ)",style: AppTextStyle.instance.w600.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
                color: AppColors.colorFFF,
              ),),
              trailing: SvgPicture.asset("assets/svg/uzbekistan-flag-round-circle-icon.svg",height: 32.h,width: 32.w,),
            ),
            ListTile(
              leading: IconButton(onPressed: (){},icon: Icon(Icons.radio_button_checked_sharp,color: AppColors.colorFFF,),),
              title: Text("Русский   (RU)",style: AppTextStyle.instance.w600.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
                color: AppColors.colorFFF,
              ),),
              trailing: SvgPicture.asset("assets/svg/russia-flag-round-circle-icon.svg",height: 32.h,width: 32.w),
            ),
            ListTile(
              leading: IconButton(onPressed: (){},icon: Icon(Icons.radio_button_checked_sharp,color: AppColors.colorFFF),),
              title: Text("English (US)",style: AppTextStyle.instance.w600.copyWith(
                fontSize: FontSizeConst.instance.mediumFont,
                color: AppColors.colorFFF,
              ),),
              trailing: SvgPicture.asset("assets/svg/usa-flag-round-circle-icon.svg",height: 32.h,width: 32.w),
            ),
          ],
        ),
      ),
    );
  }
}
