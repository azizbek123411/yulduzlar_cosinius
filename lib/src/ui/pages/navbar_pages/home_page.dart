import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/cards/artist_card.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/home_page_screens/home_banner.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/categories.dart';

import '../../../config/appcolors.dart';
import '../../../repository/utils/app_padding.dart';
import '../../screens/home_page_screens/home_appbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity.w, 44.h),
        child: const HomeAppBar(),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w),
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HBox(20.h),
              Text("Prepared several",style:AppTextStyle.instance.w600.copyWith(
                fontSize: FontSizeConst.instance.largeFont,
                color: Colors.white
              ) ,),
              SizedBox(
                height: 250.h,
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HomeBanner(),
                      HomeBanner(),
                      HomeBanner(),
                      HomeBanner(),
                    ],
                  ),
                ),
              ),
              HBox(20),
              SizedBox(
                height: 40.h,
                child: Center(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                  Categories(),
                  Categories(),
                  Categories(),
                  Categories(),
                  Categories(),
                    ],
                  ),
                ),
              ),
            const ArtistCard(),
            const ArtistCard(),
            const ArtistCard(),
            const ArtistCard(),


            ],
          ),
        )
      ),
    );
  }
}
