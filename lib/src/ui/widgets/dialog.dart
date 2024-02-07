import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';

import '../../config/appcolors.dart';

class ShowDialog extends StatelessWidget {
  String title;
  String subtitle;
  String imagePath;
  double h;
  double w;
  double radius;
  void Function() onTap;
   ShowDialog({super.key,
     required this.radius,
     required this.subtitle,
     required this.title,
     required this.onTap,
     required this.imagePath,
   required this.w,
   required this.h});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        backgroundColor: Colors.transparent,
       child: Container(
         padding: Dis.all(20),
         height: h,
         width: w,
         decoration: BoxDecoration(color: AppColors.mainBackground.withOpacity(0.4),
           borderRadius: BorderRadius.circular(radius),
           border: Border.all(color: AppColors.color2d256b),
         ),

         child:Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             const Image(image: AssetImage("assets/images/_fpdl 1.png"),),
             Text(title,style: AppTextStyle.instance.w600.copyWith(
                 fontSize: FontSizeConst.instance.largeFont,
                 color: AppColors.colorFFF
             ),),
             Text(subtitle,style: AppTextStyle.instance.w400.copyWith(
                 fontSize: FontSizeConst.instance.smallFont,
                 color: AppColors.colorFFF60
             ),
             textAlign: TextAlign.center,),
           ],
         )
       ),
      ),
    );
  }
}
