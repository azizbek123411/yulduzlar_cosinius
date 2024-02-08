import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/chat_page.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/ordered_page.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mening buyurtmalarim",
          style: AppTextStyle.instance.w700.copyWith(
            color: AppColors.colorFFF,
            fontSize: FontSizeConst.instance.extraLargeFont
          ),),
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [WBox(2.w),
            ButtonWidget(onTap: (){}, path:"assets/svg/Frame.svg" , h: 40.h, w: 40.w, radius: 50)],
          ),
          bottom: TabBar(
            indicatorPadding: Dis.only(lr: 8.w),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerHeight: 0,
            indicator: BoxDecoration(
              gradient: AppColors.mainButtonGradient,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: AppColors.colorC042D7)
              // color: AppColors.colorC042D7
            ),
            indicatorColor: AppColors.colorC042D7,
             unselectedLabelColor: AppColors.colorFFF60,
            labelStyle: AppTextStyle.instance.w600.copyWith(
              color: AppColors.colorFFF,
              fontSize: FontSizeConst.instance.mediumFont,
            ),
            tabs: [
              Tab(
                text:"Bron qilingan",
              ),
              Tab(
                text: "Chat",
              )
          ],

          ),
        ),
        backgroundColor: AppColors.mainBackground,
        body: TabBarView(children: [
          OrderedPage(),
          ChatPage(),
        ],),
      ),
    );
  }
}
