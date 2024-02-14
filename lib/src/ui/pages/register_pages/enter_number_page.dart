import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/sms_confirm.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../../../repository/utils/app_padding.dart';

class EnterNumberPage extends StatefulWidget {
  const EnterNumberPage({super.key});

  @override
  State<EnterNumberPage> createState() => _EnterNumberPageState();
}

class _EnterNumberPageState extends State<EnterNumberPage> {
  TextEditingController controller = TextEditingController();
  bool showButton = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(inputLength);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void inputLength() {
    setState(() {
      showButton = controller.text.length == 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.only(lr:16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HBox(150.h),
              Container(
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
              HBox(20.h),
              Text(
                "Hisobingizni yarating",
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.extraLargeFont,
                  color: AppColors.colorFFF,
                ),
              ),
              HBox(30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Telefon raqami",
                    style: AppTextStyle.instance.w500.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF,
                    ),
                  ),
                  Container(
                    margin: Dis.only(tb: 8.h),
                    width: double.infinity,
                    height: 52.h,
                    decoration: BoxDecoration(
                      gradient: AppColors.mainBackgroundGradient,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: showButton?AppColors.colorC042D7:AppColors.color2d256b,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      controller: controller,
                      maxLength: 9,
                      keyboardType: TextInputType.number,
                      maxLines: 1,
                      style: AppTextStyle.instance.w700.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                        color: AppColors.colorFFF,
                      ),
                      decoration: InputDecoration(
                        contentPadding: Dis.only(top: 30.h),
                        prefixIcon: Padding(
                          padding: Dis.only(left: 8.w, top: 21.h),
                          child: Text(
                            "+998 | ",
                            style: AppTextStyle.instance.w700.copyWith(
                              fontSize: FontSizeConst.instance.mediumFont,
                              color: AppColors.colorFFF,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: Dis.only(top: 303.h),
                height: 50.h,
                // width: double.infinity,
                child: showButton
                    ? MainButton(
                    height: 48.h,
                    width: double.infinity,
                    title: "Davom etish",
                    onTap: () {
                      AppRouter.go(context, const SMSConfirm());
                    },
                    radius: 50)
                    : Container(
                  height: 48.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: AppColors.mainBackgroundGradient,
                    border:
                    Border.all(color: showButton?AppColors.colorC042D7:AppColors.color2d256b, width: 1),
                  ),
                  child: Center(
                    child: Text(
                      "Davom etish",
                      style: AppTextStyle.instance.w600.copyWith(
                          fontSize: FontSizeConst.instance.mediumFont,
                          color: AppColors.colorFFF),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
