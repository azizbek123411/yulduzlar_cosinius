import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/order_screens/enter_code.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/text_field.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        leading: Row(
          children: [
            WBox(2.w),
            ButtonWidget(
                onTap: () {
                  AppRouter.close(context);
                },
                path: "assets/svg/Frame.svg",
                h: 40.h,
                w: 40.w,
                radius: 50),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.all(20),
          child: Column(
            children: [
              TextFields(
                title: "Karta raqami",
                hintText: "0000 0000 0000 0000",
                readOnly: false,
                suffixIcon: WBox(0),
                h: 48.h,
                w: double.infinity,
                radius: 40,
                prefix: Padding(
                  padding: Dis.all(10.0),
                  child: SvgPicture.asset(
                    'assets/svg/card.svg',
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                maxLine: 1,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: Dis.only(lr: 20.w, tb: 20.h),
        child: MainButton(
          height: 48.h,
          width: double.infinity,
          title: 'Keyingisi',
          onTap: () {
            AppRouter.go(context,  EnterCode());
          },
          radius: 50,
        ),
      ),
    );
  }
}
