import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../../config/appcolors.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.all(20),
        child: const Column(
          children: [
            FAQ(),
            FAQ(),
            FAQ(),
          ],
        ),
      ),
    );
  }
}

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    bool isOpen = true;
    void tapped() {
      setState(() {
        isOpen = !isOpen;
      });
    }

    return Container(
      margin: Dis.only(tb: 8.h),
      width: double.infinity,
      height: isOpen ? 140.h : 58.h,
      decoration: BoxDecoration(
        gradient: AppColors.mainBackgroundGradient,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.color2d256b,
        ),
      ),
      child: ListTile(
        onTap: (){
          tapped();
        },
        title: Text(
          "Super Stars qanday loyiha",
          style: AppTextStyle.instance.w700.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
              color: AppColors.colorFFF),
        ),
        subtitle: isOpen
            ? Text(
                "Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha Super Stars qanday loyiha",
                style: AppTextStyle.instance.w500.copyWith(
                    fontSize: FontSizeConst.instance.smallFont,
                    color: AppColors.colorFFF60),
              )
            : null,
        trailing: IconButton(
          onPressed: tapped,
          icon: isOpen
              ? Icon(
                  Icons.arrow_drop_up_outlined,
                  color: AppColors.colorFFF,
                )
              : Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColors.colorFFF,
                ),
        ),
      ),
    );
  }
}
