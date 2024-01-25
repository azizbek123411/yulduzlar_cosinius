import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset('assets/svg/vector.svg'),
      title: Text('Super Stars',style: TextStyle(color: AppColors.colorC042D7),),
    );
  }
}
