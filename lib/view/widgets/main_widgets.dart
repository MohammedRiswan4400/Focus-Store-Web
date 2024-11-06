import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';

extension ScreenUtil on BuildContext {
  double get kHeight => MediaQuery.of(this).size.height;
  double get kWidth => MediaQuery.of(this).size.width;
}

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.title,
    required this.isMobile,
  });
  final String title;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomeGoogleFont(
        text: title,
        size: isMobile ? 20 : 30,
        weight: FontWeight.w700,
        // color: AppColors.kWhiteColor,
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.kHeight,
    required this.kWidth,
    required this.image,
  });

  final double kHeight;
  final double kWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.asset(
        image,
        height: kHeight,
        width: kWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
