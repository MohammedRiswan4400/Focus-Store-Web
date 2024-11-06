import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/mobile/widgets/home_mobile_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/widget/home_widgets.dart';
import 'package:focus_mobiles_web/view/widgets/main_widgets.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(44, 255, 193, 7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              20.vSpace,
              const Header(
                isMobile: true,
                isTab: false,
              ),
              5.vSpace,
              const ScreenTitle(title: 'Home', isMobile: true),
              5.vSpace,
              Expanded(
                child: MobileScreenHomeBody(kWidth: kWidth, kHeight: kHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
