import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/splash_screens/splash_roll_screen.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';

import '../../../config/appcolors.dart';
import '../register_pages/enter_number_page.dart';

class SplashScroll extends StatefulWidget {
  const SplashScroll({super.key});

  @override
  State<SplashScroll> createState() => _SplashScrollState();
}

class _SplashScrollState extends State<SplashScroll> {
  PageController controller = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 18.w, top: 50.h, bottom: 15.h),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // HBox(10.h),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(
                  spacing: 20,
                  activeDotColor: AppColors.colorC042D7,
                  dotWidth: 100.w,
                  dotHeight: 4.h,
                ),
              ),
              SizedBox(
                height: 550.h,
                width: double.infinity,
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                    // print(index);
                  },
                  controller: controller,
                  children: const [
                    SplashRollScreen(),
                    SplashRollScreen(),
                    SplashRollScreen(),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
                width: double.infinity,
                child: MainButton(
                    height: 48.h,
                    width: double.infinity,
                    title: "Keyingisi",
                    onTap: () {
                      setState(() {
                        if (currentIndex == 0) {
                          controller.animateToPage(1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        } else if (currentIndex == 1) {
                          controller.animateToPage(2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        } else if (currentIndex == 2) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const EnterNumberPage(),
                            ),
                          );
                        }
                      });
                    },
                    radius: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
