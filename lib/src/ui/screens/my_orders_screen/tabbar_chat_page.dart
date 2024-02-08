import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/creen_utils.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/chat_page.dart';

import '../../../config/appcolors.dart';
import '../../../config/router.dart';
import '../../../repository/utils/app_padding.dart';
import '../artist_screens/artist_row.dart';

class TabbarChatPage extends StatefulWidget {
  const TabbarChatPage({super.key});

  @override
  State<TabbarChatPage> createState() => _TabbarChatPageState();
}

class _TabbarChatPageState extends State<TabbarChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding: Dis.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    AppRouter.go(context, const ChatPage());
                  },
                  child: const ArtistRow()),
              GestureDetector(
                  onTap: () {
                    AppRouter.go(context, const ChatPage());
                  },
                  child: const ArtistRow()),
            ],
          ),
        ),
      ),
    );
  }
}
