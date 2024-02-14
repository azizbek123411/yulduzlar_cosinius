import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/space.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/main_nav_page.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/main_button.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/text_field.dart';

import '../../../config/appcolors.dart';
import '../../widgets/dialog.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
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
                  prefix: WBox(10.w),
                  maxLine: 1),
              TextFields(
                  title: "Familiya",
                  hintText: "Familiyangiz",
                  readOnly: false,
                  suffixIcon: WBox(0),
                  h: 48.h,
                  w: double.infinity,
                  radius: 40,
                  prefix: WBox(10.w),
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
              showDialog(
                context: context,
                builder: (BuildContext context) => ShowDialog(
                    radius: 32,
                    subtitle:
                        "Sizning hisobingiz foydalanishga tayyor. Siz bir necha soniya ichida Bosh sahifaga yo'naltirilasiz",
                    title: "Tabriklaymiz",
                    onTap: () {},
                    imagePath: "assets/images/_fpdl 1.png",
                    w: 345.w,
                    h: 500.h),
              ).then(
                (value) => Navigator.pushReplacementNamed(
                  context,
                MainNavPage.id
                ),
              );
            },
            radius: 50),
      ),
    );
  }
}
