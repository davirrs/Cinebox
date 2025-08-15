import 'package:cinebox/ui/core/themes/resource.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            R.ASSETS_IMAGES_BG_LOGIN_PNG,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            constraints: BoxConstraints.expand(),
            color: Colors.black.withAlpha(50),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(R.ASSETS_IMAGES_LOGO_PNG),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
