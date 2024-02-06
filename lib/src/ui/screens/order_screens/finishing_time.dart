import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/artist_row.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../../../config/font_size.dart';

enum Status { standart, quick }

class FinishingTime extends StatefulWidget {
  const FinishingTime({super.key});

  @override
  State<FinishingTime> createState() => _FinishingTimeState();
}

class _FinishingTimeState extends State<FinishingTime> {
  Status _status = Status.standart;

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
              path: "assets/svg/Frame.svg",
              h: 40.h,
              w: 40.w,
              radius: 50,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Dis.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ArtistRow(),
              HBox(20.h),
              Text(
                "Tayyor bo'lish vaqti",
                style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.mediumFont,
                  color: AppColors.colorFFF,
                ),
              ),
              ListTile(
                leading: Radio<Status>(
                  activeColor: AppColors.colorFFF,
                  value: Status.standart,
                  groupValue: _status,
                  onChanged: (Status? value) {
                    setState(() {
                      _status = value!;
                    });
                  },
                ),
                title: Text(
                  "Standart (40\$)",
                  style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.mediumFont,
                    color: AppColors.colorFFF,
                  ),
                ),
                subtitle: Text(
                  "2-7 kun",
                  style: AppTextStyle.instance.w500.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF60),
                ),
              ),
              ListTile(
                leading: Radio<Status>(
                  activeColor: AppColors.colorFFF,
                  value: Status.quick,
                  groupValue: _status,
                  onChanged: (Status? value) {
                    setState(() {
                      _status = value!;
                    });
                  },
                ),
                title: Text(
                  "24 soat (60\$)",
                  style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.mediumFont,
                    color: AppColors.colorFFF,
                  ),
                ),
                subtitle: Text(
                  "Bir kun ichida tayyorlanadi!",
                  style: AppTextStyle.instance.w500.copyWith(
                      fontSize: FontSizeConst.instance.smallFont,
                      color: AppColors.colorFFF60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
