import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/register_pages/find_face.dart';

import '../../../repository/utils/app_padding.dart';
import '../../../repository/utils/space.dart';
import '../../widgets/main_button.dart';
import '../../widgets/text_field.dart';
class CreateArtist extends StatefulWidget {
  const CreateArtist({super.key});

  @override
  State<CreateArtist> createState() => _CreateArtistState();
}

class _CreateArtistState extends State<CreateArtist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.only(lr: 16.w, tb: 12.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HBox(20.h),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/abror_dostov.jpg',
                        height: 100.h,
                        width: 100.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: AppColors.mainButtonGradient,
                          border: Border.all(
                              color: AppColors.colorC042D7, width: 1),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            color: AppColors.colorFFF,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              TextFields(
                  title: "Ism",
                  hintText: "Ismingiz",
                  readOnly: false,
                  suffixIcon: WBox(0),
                  h: 48.h,
                  w: double.infinity,
                  radius: 40,
                  prefix: WBox(8),
                  maxLine: 1),
              TextFields(
                  title: "Familiya",
                  hintText: "Familiyangiz",
                  readOnly: false,
                  suffixIcon: WBox(0),
                  h: 48.h,
                  w: double.infinity,
                  radius: 40,
                  prefix: WBox(8),
                  maxLine: 1),
              TextFields(
                  title: "Familiya",
                  hintText: "Familiyangiz",
                  readOnly: false,
                  suffixIcon: WBox(8),
                  h: 220.h,
                  w: double.infinity,
                  radius: 10,
                  prefix: WBox(8),
                  maxLine: 20),
              TextFields(
                    title: "Tegishli tofialar",
                  hintText: "Honanda",
                  readOnly: false,
                  suffixIcon: WBox(0),
                  h: 48.h,
                  w: double.infinity,
                  radius: 40,
                  prefix: WBox(8),
                  maxLine: 1),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: Dis.only(lr: 16.w, bottom: 14.h),
        child: MainButton(
            height: 48.h,
            width: double.infinity,
            title: "Davom etish",
            onTap: () {
              AppRouter.go(context, const FindFace());
            },
            radius: 50),
      ),
    );
  }
}
