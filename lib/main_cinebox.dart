import 'package:cinebox/ui/core/themes/themes.dart';
import 'package:cinebox/ui/pages/Login_screen.dart';
import 'package:flutter/material.dart';

class MainCinebox extends StatelessWidget {
  const MainCinebox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CineBox',
      debugShowCheckedModeBanner: false,
      theme: Apptheme.theme,
      routes: {'/': (_) => LoginScreen()},
    );
  }
}
