import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/mobile/widgets/home_mobile_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/tablet/widgets/home_tablet_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/widget/home_widgets.dart';
import 'package:focus_mobiles_web/view/widgets/main_widgets.dart';

import '../../../../core/colors/colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(43, 93, 0, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              20.vSpace,
              const Header(
                isMobile: false,
                isTab: true,
              ),
              5.vSpace,
              const ScreenTitle(
                title: 'Home',
                isMobile: false,
              ),
              5.vSpace,
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.kBlackColor,
                          ),
                          height:
                              // kHeight / 4,
                              // // : isTab
                              // //     ?
                              kHeight / 3,
                          //     : kHeight / 2,
                          width: kWidth / 1.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/banner3.png',
                              fit: BoxFit.cover,
                              // width: double.infinity,
                              // height: 600,
                            ),
                          ),
                        ),
                        TabletSecondoryBannerWidget(
                          kWidth: kWidth,
                          kHeight: kHeight,
                        ),
                      ],
                    ),
                    10.vSpace,
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
