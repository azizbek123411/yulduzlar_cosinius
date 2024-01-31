import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/cards/notification_card.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: PreferredSize(
        preferredSize: Size(353.w, 40.h),
        child: Container(
          padding: Dis.lr(20.w),
          child: AppBar(
            title: Text('Bildirishnoma',style: AppTextStyle.instance.w500.copyWith(
              fontSize: FontSizeConst.instance.extraLargeFont,
              color: Colors.white
            ),),
            backgroundColor: Colors.transparent,
            leading: ButtonWidget(onTap: () {
              AppRouter.close(context);
            }, path: 'assets/svg/Frame.svg',),
          ),
        ),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w,tb: 20.h),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              NotCard(),
              NotCard(),
            ],
          ),
        ),
      ),
    );
  }
}
