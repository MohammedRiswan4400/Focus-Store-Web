import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/colors/colors.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/widgets/main_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/screen_home_desktop.dart';
import 'mobile/screen_home_mobile.dart';
import 'tablet/screen_home_tablet.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const HomeMobile(),
        tablet: (BuildContext context) => const HomeTab(),
        desktop: (BuildContext context) => const HomeDesktop()
        // watch: (BuildContext context) => Container(color: Colors.purple),
        // child: ScreenHomeMainWidgets(kHeight: kHeight, kWidth: kWidth),
        );
  }
}

class ScreenHomeMainWidgets extends StatelessWidget {
  const ScreenHomeMainWidgets({
    super.key,
    required this.kHeight,
    required this.kWidth,
  });

  final double kHeight;
  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.vSpace,
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: AppColors.kPrimaryColor,
                //       boxShadow: const [
                //         BoxShadow(
                //           offset: Offset(2, 5),
                //           blurRadius: 10,
                //           color: AppColors.kGreyColor,
                //         )
                //       ]),
                //   height: 70,
                //   width: double.infinity,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: 10, vertical: 10),
                //     child: Row(
                //       children: [
                //         Image.asset('assets/icons/Icon-192.png'),
                //         const Spacer(),
                //         HomeScreenAppBarWidgets(
                //           icons: Icons.settings,
                //           title: 'Settings',
                //         ),
                //         30.hSpace,
                //         HomeScreenAppBarWidgets(
                //           icons: Icons.search,
                //           title: 'Search',
                //         ),
                //         30.hSpace,
                //         HomeScreenAppBarWidgets(
                //           icons: Icons.shopping_cart,
                //           title: 'Cart',
                //         ),
                //         30.hSpace,
                //         HomeScreenAppBarWidgets(
                //           icons: Icons.account_circle,
                //           title: 'Login',
                //         ),
                //         20.hSpace
                //       ],
                //     ),
                //   ),
                // ),
                // const ScreenTitle(
                //   title: 'Home',
                // ),
                5.vSpace,
                // Stack(
                //   children: [
                //     // ScreenHomeBody(kHeight: kHeight),
                //     kWidth >= 800
                //         ? Positioned(
                //             right: 10,
                //             top: 10,
                //             child: SecondoryBannerWidget(
                //               kWidth: kWidth,
                //               kHeight: kHeight,
                //             ))
                //         : const SizedBox()
                //   ],
                // ),
                10.vSpace,
                const BannerDotWidget(),
                10.vSpace,
                // kWidth < 1500
                //     ? SecondoryBannerOnMobileWidget(kWidth: kWidth)
                //     : const SizedBox(),
                60.vSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class InDemandFisrtRow extends StatelessWidget {
//   const InDemandFisrtRow({
//     super.key,
//     required this.kWidth,
//   });
//   final double kWidth;

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class BannerDotWidget extends StatelessWidget {
  const BannerDotWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.kLightBlackColor),
          height: 5,
          width: 20,
        ),
        10.hSpace,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kBlackColor,
          ),
          height: 5,
          width: 30,
        ),
        10.hSpace,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kLightBlackColor,
          ),
          height: 5,
          width: 20,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class HomeScreenAppBarWidgets extends StatelessWidget {
  HomeScreenAppBarWidgets({
    super.key,
    required this.icons,
    this.title,
  });
  final IconData icons;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icons,
          color: AppColors.kWhiteColor,
          size: 25,
        ),
        05.hSpace,
        CustomeGoogleFont(
          text: title ?? '',
          size: 15,
          weight: FontWeight.w400,
          color: AppColors.kWhiteColor,
        )
      ],
    );
  }
}
