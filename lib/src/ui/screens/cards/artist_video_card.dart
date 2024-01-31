import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

class ArtistVideoCard extends StatelessWidget {
  const ArtistVideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dis.right(20.w),
      height: 200.h,
      width: 200.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/abror_dostov.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [

             Container(
               alignment: Alignment.center,
               child: SvgPicture.asset(
                'assets/svg/play.svg',
                 height: 24.h,
                 width: 24.w,
                           ),
             ),

          Container(
            margin: Dis.all(10),
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              'assets/svg/volume-cross.svg',
              height: 24.h,
              width: 24.w,
            ),
          ),
        ],
      ),
    );
  }
}
