import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/artist_info_bottombat.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/cards/comment_card.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/categories.dart';

import '../cards/artist_video_card.dart';
import 'artist_row.dart';

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
        preferredSize: Size(double.infinity, 40.h),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [
              WBox(3.w),
              ButtonWidget(
                onTap: () {
                  AppRouter.close(context);
                },
                path: 'assets/svg/Frame.svg', h: 42.h, w: 40.w, radius: 50,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ArtistVideoCard(),
                    ArtistVideoCard(),
                  ],
                ),
              ),
              HBox(30.h),
              const ArtistRow(),
              HBox(30.h),
              Container(
                padding: Dis.only(
                  lr: 16.w,
                  tb: 8.h,
                ),
                height: 71.h,
                width: 353.w,
                decoration: BoxDecoration(
                    gradient: AppColors.mainBackgroundGradient,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.color2d256b)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Reviews (24)',
                          style: AppTextStyle.instance.w500.copyWith(
                            fontSize: FontSizeConst.instance.extraSmallFont,
                            color: AppColors.colorFFF60,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.colorFFF,
                              size: 25,
                            ),
                            Text(
                              ' 4.9',
                              style: AppTextStyle.instance.w600.copyWith(
                                  fontSize: FontSizeConst.instance.mediumFont,
                                  color: AppColors.colorFFF),
                            )
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/svg/Vector 3.svg"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Followers',
                          style: AppTextStyle.instance.w500.copyWith(
                            fontSize: FontSizeConst.instance.extraSmallFont,
                            color: AppColors.colorFFF60,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: AppColors.colorFFF,
                              size: 25,
                            ),
                            Text(
                              ' 782',
                              style: AppTextStyle.instance.w600.copyWith(
                                  fontSize: FontSizeConst.instance.mediumFont,
                                  color: AppColors.colorFFF),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              HBox(15.h),
              Container(
                padding: Dis.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppColors.mainBackgroundGradient,
                  border: Border.all(
                    color: AppColors.color2d256b,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yulduz Usmonova haqida',
                      style: AppTextStyle.instance.w700.copyWith(
                        fontSize: FontSizeConst.instance.largeFont,
                        color: AppColors.colorFFF,
                      ),
                    ),
                    HBox(5.h),
                    Text(
                      '1963-yil 12-dekabrda Margʻilonda tugʻilgan, oʻzbek estradasi xonandasi, Oʻrta Osiyo Primadonnasi, Bastakor, Oʻzbekiston (1995) va Qoraqalpogʻiston xalq artisti (2000), Tojikiston, Turkmaniston va Qozogʻistonda xizmat koʻrsatgan artist. Oʻzbekiston Davlat konservatoriyasini tugatgan (1988). Oʻzi tashkil etgan ansamblning yakkaxon xonandasi (1990-yildan), 800 tadan ziyod ashulalar sohibasi, 70 ga yaqin albomlar egasi. Repertuaridan oʻrin olga koʻplab qoʻshiqlarning (soʻzi va musiqasi) muallifi.',
                      style: AppTextStyle.instance.w500.copyWith(
                          fontSize: FontSizeConst.instance.smallFont,
                          color: AppColors.colorFFF60),
                    )
                  ],
                ),
              ),
              HBox(10.h),
              Text(
                'Tegishli toifalar',
                style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.mediumFont,
                  color: AppColors.colorFFF,
                ),
              ),
              HBox(10.h),
              const SizedBox(
                child: Row(
                  children: [
                    Categories(),
                    Categories(),
                    Categories(),
                  ],
                ),
              ),
              HBox(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sharhlar',
                    style: AppTextStyle.instance.w700.copyWith(
                      fontSize: FontSizeConst.instance.mediumFont,
                      color: AppColors.colorFFF,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Hammasini ko'rsatish",
                      style: AppTextStyle.instance.w700.copyWith(
                        fontSize: FontSizeConst.instance.mediumFont,
                        color: AppColors.colorC042D7,
                      ),
                    ),
                  ),
                ],
              ),
              CommentCard(),
              CommentCard(),
              CommentCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ArtistInfoNavar(),
    );
  }
}
