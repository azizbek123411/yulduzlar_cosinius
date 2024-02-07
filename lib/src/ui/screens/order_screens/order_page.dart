import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/artist_screens/select_ordering.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/order_screens/order_for_others.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/order_screens/order_formyself.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

import '../../../config/font_size.dart';
import '../../../repository/constants/text_style.dart';
import '../../../repository/utils/app_padding.dart';
import '../artist_screens/artist_row.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Row(
          children: [
            WBox(2.w),
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
      body: Padding(
        padding: Dis.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
             const  ArtistRow(),
              SelectOrder(
                  title: "O'zim uchun",
                  onTap: () {
                    AppRouter.go(context, const ForMyself());
                  },
                  path: 'assets/images/formyself.png'),
              SelectOrder(
                  title: "Do'stlar uchun",
                  onTap: () {
                    AppRouter.go(context, const ForOthers());
                  },
                  path: 'assets/images/forothers.png'),
              HBox(10.h),
              Text(
                "Tasdiqlash yoki reklama foydalanuvchisi uchun videolarni Cameo ilovasi orqali bron qilib bo'lmaydi",
                style: AppTextStyle.instance.w500.copyWith(
                  fontSize: FontSizeConst.instance.smallFont,
                  color: AppColors.colorFFF,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
