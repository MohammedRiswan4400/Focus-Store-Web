import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/routes/screen_routes.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    AppRoutes.goFromSplashScreen();
    return Scaffold(
      body: Center(
        child: Image.asset('assets/icons/Icon-192.png'),
      ),
    );
  }
}
