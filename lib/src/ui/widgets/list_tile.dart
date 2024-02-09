import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
class ListTilee extends StatelessWidget {
  Widget leading;
  String title;
  Widget actionIcon;
   ListTilee({super.key,
  required this.title,
  required this.actionIcon,
  required this.leading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dis.only(tb: 5.h),
      child: ListTile(
        leading: leading,
        title: Text(title,style: AppTextStyle.instance.w600.copyWith(
          fontSize: FontSizeConst.instance.smallFont,
          color: AppColors.colorFFF,
        ),),
        trailing: actionIcon,
      ),
    );
  }
}
