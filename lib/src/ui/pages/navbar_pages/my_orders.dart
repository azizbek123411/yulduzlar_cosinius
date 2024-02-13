import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/tabbar_chat_page.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/ordered_page.dart';
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
          leadingWidth: 0,
          title: Text("Mening buyurtmalarim",
          style: AppTextStyle.instance.w700.copyWith(
            color: AppColors.colorFFF,
            fontSize: FontSizeConst.instance.largeFont
          ),),
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 60.h),
            child: TabBar(
              indicatorPadding: Dis.only(lr: 8.w),
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
              indicator: BoxDecoration(
                gradient: AppColors.mainButtonGradient,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.colorC042D7)
              ),
              indicatorColor: AppColors.colorC042D7,
               unselectedLabelColor: AppColors.colorFFF60,
              labelStyle: AppTextStyle.instance.w600.copyWith(
                color: AppColors.colorFFF,
                fontSize: FontSizeConst.instance.mediumFont,
              ),
              tabs:const [
                 Tab(
                  text:"Bron qilingan",
                ),
                Tab(
                  text: "Chat",
                )
            ],

            ),
          ),
        ),
        backgroundColor: AppColors.mainBackground,
        body: const TabBarView(children: [
          OrderedPage(),
          TabbarChatPage(),
        ],),
      ),
    );
  }
}
