import 'package:flutter/material.dart';
import 'package:yulduzlar_cosinius/src/config/router.dart';
import 'package:yulduzlar_cosinius/src/repository/utils/app_padding.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/cards/artist_card.dart';
import 'package:yulduzlar_cosinius/src/ui/screens/my_orders_screen/opened_ordered_artist.dart';

import '../../../config/appcolors.dart';
class OrderedPage extends StatefulWidget {
  const OrderedPage({super.key});

  @override
  State<OrderedPage> createState() => _OrderedPageState();
}

class _OrderedPageState extends State<OrderedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      body: Padding(
        padding:  Dis.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ArtistCard(onTap: () { AppRouter.go(context,  OpenedOrederedArtist(),); },),
              ArtistCard(onTap: () { AppRouter.go(context,  OpenedOrederedArtist(),); },),
            ],
          ),
        ),
      )
    );
  }
}
