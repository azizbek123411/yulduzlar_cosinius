import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';

import '../../../config/appcolors.dart';
import '../../screens/home_page_screens/home_appbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color121433,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity.w, 44.h),
        child: const HomeAppBar(),
      ),
      body: Center(
        child: Text(
          "HomePage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
