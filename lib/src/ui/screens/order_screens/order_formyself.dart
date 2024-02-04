import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/buttons.dart';

class ForMyself extends StatefulWidget {
  const ForMyself({super.key});

  @override
  State<ForMyself> createState() => _ForMyselfState();
}

class _ForMyselfState extends State<ForMyself> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ButtonWidget(
          onTap: () {
            AppRouter.close(context);
          },
          path: 'assets/svg/Frame.svg',
          h: 40.h,
          w: 40.w,
          radius: 50,
        ),
      ),
    );
  }
}
