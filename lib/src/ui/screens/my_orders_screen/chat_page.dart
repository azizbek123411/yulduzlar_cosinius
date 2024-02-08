import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/config/appcolors.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/widgets/chat_textfield.dart';

import '../../../config/router.dart';
import '../../../repository/utils/app_padding.dart';
import '../artist_screens/artist_row.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: Padding(
          padding: Dis.only(top: 20.h),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: Dis.all(13.0),
              child: GestureDetector(
                onTap: () {
                  AppRouter.close(context);
                },
                child: SvgPicture.asset(
                  'assets/svg/Frame.svg',
                ),
              ),
            ),
            title: Padding(
              padding: Dis.only(tb: 10),
              child: const ArtistRow(),
            ),
          ),
        ),
      ),
      floatingActionButton: ChattextField(controller: controller,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(padding: Dis.all(20),),
    );
  }
}
