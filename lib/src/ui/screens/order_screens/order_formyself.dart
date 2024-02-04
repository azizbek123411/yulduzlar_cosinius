import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/artist_row.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/cards/artist_card.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../../../config/appcolors.dart';

class ForMyself extends StatefulWidget {
  const ForMyself({super.key});

  @override
  State<ForMyself> createState() => _ForMyselfState();
}

class _ForMyselfState extends State<ForMyself> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            WBox(3.w),
            ButtonWidget(
              onTap: () {
                AppRouter.close(context);
              },
              path: 'assets/svg/Frame.svg',
              h: 40.h,
              w: 40.w,
              radius: 50,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w,tb: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
             ArtistRow(),

            ],
          ),
        ),
      ),
    );
  }
}
