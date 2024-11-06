import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/desktop/widgets/home_desktop_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/widget/home_widgets.dart';
import 'package:focus_mobiles_web/view/widgets/main_widgets.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              20.vSpace,
              const Header(
                isTab: false,
                isMobile: false,
              ),
              5.vSpace,
              const ScreenTitle(
                title: 'Home',
                isMobile: false,
              ),
              10.vSpace,
              DesktopScreenHomeBody(
                kWidth: kWidth,
                kHeight: kHeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
