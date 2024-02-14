import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/create_parol_page.dart';

import '../../../config/font_size.dart';
import '../../../config/router.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
import '../../widgets/main_button.dart';
class SMSConfirm extends StatefulWidget {
  const SMSConfirm({super.key});

  @override
  State<SMSConfirm> createState() => _SMSConfirmState();
}

class _SMSConfirmState extends State<SMSConfirm> {
  TextEditingController smsController=TextEditingController();
  bool showButton=false;
  @override
  void initState() {
    super.initState();
    smsController.addListener(inputLength);
  }

  @override
  void dispose() {
    smsController.dispose();
    super.dispose();
  }
  void inputLength(){
    setState(() {
      showButton=smsController.text.length==4;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 16.w,tb: 14.h),
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
                      // margin: Dis.only(lr: 25.h),
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
                "SMS-dan kelgan kodni kiriting",
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.largeFont,
                  color: AppColors.colorFFF,
                ),
                textAlign: TextAlign.start,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SMS kodi",
                    style: AppTextStyle.instance.w500.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF,
                    ),
                  ),
                  HBox(10.h),
                  PinCodeTextField(

                    appContext: context,
                    length: 4,
                    controller: smsController,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    textStyle: AppTextStyle.instance.w700.copyWith(
                      fontSize: FontSizeConst.instance.extraLargeFont,
                      color: AppColors.colorFFF,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(50),
                      fieldHeight: 48.h,
                      fieldWidth: 77.w,
                      selectedColor: AppColors.colorC042D7,
                      selectedFillColor: AppColors.colorC042D7.withOpacity(0.1),
                      activeColor: AppColors.color2d256b,
                      activeFillColor: AppColors.color2d256b,
                      inactiveColor: AppColors.color2d256b,
                      inactiveFillColor: AppColors.color2d256b,
                    ),
                  ),
                  Text("12 soniyadan keyin qayta yuboring",style: AppTextStyle.instance.w600.copyWith(
                    fontSize: FontSizeConst.instance.smallFont,
                    color: AppColors.colorFFF60
                  ),),
                  Container(
                    margin: Dis.only(top: 274.h),
                    height: 50.h,
                    width: double.infinity,
                    child: showButton
                        ? MainButton(
                        height: 48.h,
                        width: double.infinity,
                        title: "Davom etish",
                        onTap: () {
                          AppRouter.go(context, const CreateParol());
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
              )
            ],
          ),
        ),
      ),

    );
  }
}
