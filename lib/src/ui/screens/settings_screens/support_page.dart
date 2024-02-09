import "package:flutter/material.dart";
import "package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart";

import "../../../config/appcolors.dart";
import "../../../config/font_size.dart";
import "../../../config/router.dart";
import "../../../repository/constants/text_style.dart";
import "../../../repository/utils/app_padding.dart";
import "../../../repository/utils/space.dart";
import "../../widgets/buttons.dart";

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            leading: Row(
              children: [
                WBox(2.w),
                ButtonWidget(onTap: () {
                  AppRouter.close(context);
                },
                  path: "assets/svg/Frame.svg",
                  h: 40.h,
                  w: 40.w,
                  radius: 50,)
              ],
            ),

            title: Text("Yordam markazi",
            style: AppTextStyle.instance.w700.copyWith(
        color: AppColors.colorFFF,
        fontSize: FontSizeConst.instance.largeFont
        ),),
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: TabBar(
          indicatorPadding: Dis.only(lr: 8.w),
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          indicator: BoxDecoration(
              gradient: AppColors.mainButtonGradient,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: AppColors.colorC042D7)
          ),
          indicatorColor: AppColors.colorC042D7,
          unselectedLabelColor: AppColors.colorFFF60,
          labelStyle: AppTextStyle.instance.w600.copyWith(
            color: AppColors.colorFFF,
            fontSize: FontSizeConst.instance.mediumFont,
          ),
          tabs: const [
            Tab(
              text: "FAQ",
            ),
            Tab(
              text: "Bog'lanish",
            )
          ],

        ),
      ),
    ),
    backgroundColor: AppColors.mainBackground,
        body: TabBarView(
          children: [],
        ),
    ),
    );
  }
}
