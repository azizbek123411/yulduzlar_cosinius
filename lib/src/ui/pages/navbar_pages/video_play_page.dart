import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/artist_row.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  bool like = true;

  void isLiked() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Center(
        child: Container(
          padding: Dis.only(lr: 15.w),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/abror_dostov.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    isLiked();
                  },
                  child: like
                      ? SvgPicture.asset("assets/svg/heart.svg")
                      : SvgPicture.asset('assets/svg/heart_filled.svg'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svg/share.svg"),
                ),
                const ArtistRow(),
                HBox(8.h),
                Divider(
                  indent: 5,
                  endIndent: 5,
                  thickness: 4,
                  color: AppColors.colorFFF60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
