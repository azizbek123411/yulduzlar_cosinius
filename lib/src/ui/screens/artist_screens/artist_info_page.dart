import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../cards/artist_video_card.dart';

class ArtistInfo extends StatefulWidget {
  const ArtistInfo({super.key});

  @override
  State<ArtistInfo> createState() => _ArtistInfoState();
}

class _ArtistInfoState extends State<ArtistInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 44.h),
        child: Padding(
          padding:Dis.only(left: 15.w),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: ButtonWidget(
              onTap: () {
                AppRouter.close(context);
              },
              path: 'assets/svg/Frame.svg',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.lr(15),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ArtistVideoCard(),
                    ArtistVideoCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
