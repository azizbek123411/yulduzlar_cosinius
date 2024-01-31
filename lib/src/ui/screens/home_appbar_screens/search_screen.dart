import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../widgets/search_appbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: SearchAppBar(),
      ),
      body: Padding(
        padding: Dis.only(lr: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yaqinda qidirgansiz:',
                    style: AppTextStyle.instance.w300.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Tozalash",
                        style: AppTextStyle.instance.w700.copyWith(
                          fontSize: FontSizeConst.instance.smallFont,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
              Divider(
                color: AppColors.color2d256b,
              )
            ],
          ),
        ),
      ),
    );
  }
}
