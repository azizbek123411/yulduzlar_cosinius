import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/config/font_size.dart';
import 'package:yulduzlar_cosinius/src/repository/constants/text_style.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/list_tile.dart';

import '../../../repository/utils/app_padding.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Sozlamalar",
          style: AppTextStyle.instance.w700.copyWith(
              fontSize: FontSizeConst.instance.largeFont,
              color: AppColors.colorFFF),
        ),
      ),
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.all(20),
        child: Center(
          child: Column(
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
              Text("Abror Dostov",style: AppTextStyle.instance.w600.copyWith(
                color: AppColors.colorFFF,
                fontSize: FontSizeConst.instance.mediumFont
              ),),

              Text("+99891 999 99 99",style: AppTextStyle.instance.w400.copyWith(
                  color: AppColors.colorFFF60,
                  fontSize: FontSizeConst.instance.smallFont
              ),),
              Divider(
                thickness: 2,
                color: AppColors.color2d256b,
              ),
              ListTilee(title:"Profil", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/profile-circle.svg", h: 40.h, w: 40.w, radius: 50),),
              ListTilee(title:"Ilova tili", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/language.svg", h: 40.h, w: 40.w, radius: 50),),
              ListTilee(title:"Dark mode", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/dark_them.svg", h: 40.h, w: 40.w, radius: 50),),
              ListTilee(title:"Xavfsizlik", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/shield-security.svg", h: 40.h, w: 40.w, radius: 50),),
              ListTilee(title:"Yordam markazi", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/support.svg", h: 40.h, w: 40.w, radius: 50),),
              ListTilee(title:"Log Out", actionIcon: IconButton(onPressed: (){},icon: Icon(Icons.keyboard_arrow_right_sharp,size:24 ,),), leading:  ButtonWidget(onTap: (){}, path: "assets/svg/logout-2 1.svg", h: 40.h, w: 40.w, radius: 50),),
            ],
          ),
        ),
      ),
    );
  }
}
