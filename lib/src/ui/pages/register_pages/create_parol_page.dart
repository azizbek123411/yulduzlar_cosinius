import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/user_or_artist.dart';

import '../../../config/appcolors.dart';
import '../../../config/font_size.dart';
import '../../../config/router.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
import '../../../repository/utils/space.dart';
import '../../widgets/main_button.dart';

class CreateParol extends StatefulWidget {
  const CreateParol({super.key});

  @override
  State<CreateParol> createState() => _CreateParolState();
}

class _CreateParolState extends State<CreateParol> {
  TextEditingController parolController = TextEditingController();
  TextEditingController checkParol = TextEditingController();
  bool showButton = false;
  bool visibility = true;
  bool visibilityCheck = true;

  @override
  void initState() {
    super.initState();
    parolController.addListener(parolLength);
  }

  @override
  void dispose() {
    parolController.dispose();
    super.dispose();
  }

  void onTapped() {
    setState(() {
      visibility = !visibility;
    });
  }
  void onTappedCheck() {
    setState(() {
      visibilityCheck = !visibilityCheck;
    });
  }

  void parolLength() {
    setState(() {
      showButton = parolController.text.length >= 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 16.w, tb: 14.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HBox(160.h),
              Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: Dis.all(20),
                      height: 144.h,
                      width: 144.w,
                      decoration: BoxDecoration(
                        gradient: AppColors.mainBackgroundGradient,
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/vector.svg",
                        height: 80.h,
                        width: 80.w,
                      ),
                    ),
                    Text(
                      "Hisobingizni yarating",
                      style: AppTextStyle.instance.w500.copyWith(
                        fontSize: FontSizeConst.instance.extraLargeFont,
                        color: AppColors.colorFFF,
                      ),
                    ),
                  ],
                ),
              ),
              HBox(14.h),
              Text(
                "Xush kelibsiz",
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.largeFont,
                  color: AppColors.colorFFF,
                ),
                textAlign: TextAlign.start,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HBox(10.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kalit so'zi",
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
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.color2d256b,
                            width: 1,
                          ),
                        ),
                        child: TextField(
                          obscureText: visibility,
                          controller: parolController,
                          maxLines: 1,
                          style: AppTextStyle.instance.w500.copyWith(
                              color: AppColors.colorFFF,
                              fontSize: FontSizeConst.instance.smallFont),
                          decoration: InputDecoration(
                            contentPadding: Dis.only(left: 8.w,top: 8.h),
                            suffixIcon: IconButton(onPressed: onTapped, icon:visibility? Icon(
                              Icons.visibility,
                              color: AppColors.colorFFF,
                            ):Icon(
                              Icons.visibility_off,
                              color: AppColors.colorFFF,
                            )
                            ),
                            border: InputBorder.none,
                            hintStyle: AppTextStyle.instance.w500.copyWith(
                              fontSize: FontSizeConst.instance.smallFont,
                              color: AppColors.colorFFF60,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kalit so'zini takrorlang",
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
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.color2d256b,
                            width: 1,
                          ),
                        ),
                        child: TextField(
                          obscureText: visibilityCheck,
                          controller: checkParol,
                          maxLines: 1,
                          style: AppTextStyle.instance.w500.copyWith(
                              color: AppColors.colorFFF,
                              fontSize: FontSizeConst.instance.smallFont),
                          decoration: InputDecoration(
                            contentPadding: Dis.only(left: 8.w,top: 8.h),
                            suffixIcon: IconButton(onPressed: onTappedCheck, icon:visibilityCheck? Icon(
                              Icons.visibility,
                              color: AppColors.colorFFF,
                            ):Icon(
                              Icons.visibility_off,
                              color: AppColors.colorFFF,
                            )
                            ),
                            border: InputBorder.none,
                            hintStyle: AppTextStyle.instance.w500.copyWith(
                              fontSize: FontSizeConst.instance.smallFont,
                              color: AppColors.colorFFF60,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: Dis.only(lr: 16.w, bottom: 15.h),
        child: Container(
          margin: Dis.only(top: 260.h),
          height: 50.h,
          width: double.infinity,
          child:  MainButton(
                  height: 48.h,
                  width: double.infinity,
                  title: "Davom etish",
                  onTap: () {
                    AppRouter.go(context, const UserOrArtist());
                  },
                  radius: 50)

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
