import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../../../config/appcolors.dart';
class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Xavsizlik",
        style: AppTextStyle.instance.w700.copyWith(
          fontSize: FontSizeConst.instance.mediumFont,
          color: AppColors.colorFFF,
        ),),
        leading: Row(
          children: [
            WBox(2.w),
            ButtonWidget(onTap: (){AppRouter.close(context);}, path: "assets/svg/Frame.svg", h: 40.h, w: 40.w, radius: 50,)
          ],
        ),
      ),
    );
  }
}
