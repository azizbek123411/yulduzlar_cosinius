import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/create_artist.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/create_user.dart';

import '../../../config/appcolors.dart';
import '../../../config/font_size.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
class UserOrArtist extends StatefulWidget {
  const UserOrArtist({super.key});

  @override
  State<UserOrArtist> createState() => _UserOrArtistState();
}

class _UserOrArtistState extends State<UserOrArtist> {
  PageController controller=PageController();
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          leading: WBox(0),
          title: Text("Profil",
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
              tabs:const [
                Tab(
                  text:"Foydalanuvchi",
                ),
                Tab(
                  text: "Yulduz",
                )
              ],

            ),
          ),
        ),
        backgroundColor: AppColors.mainBackground,
        body: const TabBarView(

          children: [
            CreateUser(),
            CreateArtist(),
          ],
        ),
      ),
    );
  }
}
