import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/colors/colors.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/screen_home.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  const Header({super.key, required this.isMobile, required this.isTab});
  final bool isMobile;
  final bool isTab;
  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.kPrimaryColor,
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: AppColors.kGreyColor,
            )
          ]),
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Image.asset('assets/icons/Icon-192.png'),
            const Spacer(),
            HomeScreenAppBarWidgets(
              icons: Icons.settings,
              title: isMobile ? null : 'Settings',
            ),
            isMobile
                ? 10.hSpace
                : isTab
                    ? 20.hSpace
                    : 30.hSpace,
            HomeScreenAppBarWidgets(
              icons: Icons.search,
              title: isMobile ? null : 'Search',
            ),
            isMobile
                ? 10.hSpace
                : isTab
                    ? 20.hSpace
                    : 30.hSpace,
            HomeScreenAppBarWidgets(
              icons: Icons.shopping_cart,
              title: isMobile ? null : 'Cart',
            ),
            isMobile
                ? 10.hSpace
                : isTab
                    ? 20.hSpace
                    : 30.hSpace,
            HomeScreenAppBarWidgets(
              icons: Icons.account_circle,
              title: isMobile ? null : 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
