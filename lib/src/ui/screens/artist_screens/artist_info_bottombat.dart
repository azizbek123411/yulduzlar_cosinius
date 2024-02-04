import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/order_screens/order_page.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../../../config/router.dart';
import '../../widgets/main_button.dart';

class ArtistInfoNavar extends StatelessWidget {
  const ArtistInfoNavar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: Dis.only(bottom: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              onTap: () {},
              path: 'assets/svg/message.svg',
              h: 48.h,
              w: 73.w,
              radius: 50,
            ),
            MainButton(
                height: 48.h,
                width: 260.w,
                title: "40\$ga bron qilish",
                onTap: () {
                  AppRouter.go(context, const OrderPage());
                },
                radius: 50),
          ],
        ),
      ),
    );
  }
}
