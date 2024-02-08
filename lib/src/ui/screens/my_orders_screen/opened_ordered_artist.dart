import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/chat_textfield.dart';

import '../../../config/appcolors.dart';
import '../../../config/font_size.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
import '../../../repository/utils/space.dart';
import '../../widgets/text_field.dart';
import '../artist_screens/artist_row.dart';

class OpenedOrederedArtist extends StatefulWidget {
   OpenedOrederedArtist({super.key,
  });

  @override
  State<OpenedOrederedArtist> createState() => _OpenedOrederedArtistState();
}

class _OpenedOrederedArtistState extends State<OpenedOrederedArtist> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: Padding(
          padding: Dis.only(top: 20.h),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: Dis.all(13.0),
              child: GestureDetector(
                onTap: () {
                  AppRouter.close(context);
                },
                child: SvgPicture.asset(
                  'assets/svg/Frame.svg',
                ),
              ),
            ),
            title: Padding(
              padding: Dis.only(tb: 10),
              child: const ArtistRow(),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 20.w, tb: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HBox(20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "So'rov turi",
                    style: AppTextStyle.instance.w700.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF,
                    ),
                  ),
                  Container(
                    margin: Dis.only(tb: 8.h),
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      gradient: AppColors.mainBackgroundGradient,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: AppColors.color2d256b,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      maxLines: 1,
                      style: AppTextStyle.instance.w500.copyWith(
                          color: AppColors.colorFFF,
                          fontSize: FontSizeConst.instance.smallFont),
                      readOnly: true,
                      decoration: InputDecoration(
                        prefix: WBox(10.w),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.colorFFF,
                          ),
                          onPressed: () {},
                        ),
                        // contentPadding: Dis.all(20),
                        border: InputBorder.none,
                        hintText: "Bayram",
                        hintStyle: AppTextStyle.instance.w500.copyWith(
                          fontSize: FontSizeConst.instance.smallFont,
                          color: AppColors.colorFFF,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              HBox(20.h),
              TextFields(
                prefix: WBox(10.w),
                title: "Kimga(ismi):",
                hintText: 'Ismi',
                readOnly: false,
                suffixIcon: WBox(10.w),
                h: 48.h,
                w: double.infinity,
                radius: 40,
                maxLine: 1,
              ),
              HBox(20.h),
              TextFields(
                title: 'Videoda nima deyishni xohlaysiz?',
                hintText: "Bayram tabrigini yozing!",
                readOnly: false,
                suffixIcon: WBox(10.w),
                h: 216.h,
                w: double.infinity,
                radius: 10,
                prefix: WBox(10.w),
                maxLine: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:ChattextField(controller: controller,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
