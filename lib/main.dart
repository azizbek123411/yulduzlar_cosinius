import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yulduzlar_cosinius/src/repository/bloc/bottom_navbar_bloc.dart';
import 'package:yulduzlar_cosinius/src/ui/pages/navbar_pages/main_nav_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BlocProvider(create: (BuildContext context)=>Bottomnavbar(),
      child: const MainNavPage()),
    );
  }
}


