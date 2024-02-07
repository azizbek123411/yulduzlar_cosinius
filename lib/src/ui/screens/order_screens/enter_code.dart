import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/dialog.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../../../repository/utils/app_padding.dart';

class EnterCode extends StatelessWidget {
  EnterCode({super.key});

  TextEditingController smsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            WBox(2.w),
            ButtonWidget(
                onTap: () {},
                path: "assets/svg/Frame.svg",
                h: 40.h,
                w: 40.w,
                radius: 50),
          ],
        ),
      ),
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Karta raqami",
                style: AppTextStyle.instance.w600.copyWith(
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
                  fieldWidth: 73.w,
                  selectedColor: AppColors.colorC042D7,
                  selectedFillColor: AppColors.colorC042D7.withOpacity(0.1),
                  activeColor: AppColors.color2d256b,
                  activeFillColor: AppColors.color2d256b,
                  inactiveColor: AppColors.color2d256b,
                  inactiveFillColor: AppColors.color2d256b,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: Dis.only(lr: 20.w, tb: 15.h),
        child: MainButton(
            height: 48.h,
            width: double.infinity,
            title: "Tasdiqlash",
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => ShowDialog(
                  subtitle:
                      "Sizning hisobingiz foydalanishga tayyor. Siz bir necha soniya ichida Bosh sahifaga yo'naltirilasiz",
                  title: "Tabriklaymiz",
                  onTap: () {},
                  imagePath: "assets/images/_fpdl 1.png", w: 345.w, h: 498.h, radius:32,
                ),
              );
            },
            radius: 50),
      ),
    );
  }
}
