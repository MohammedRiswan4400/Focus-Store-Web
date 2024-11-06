import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/colors/colors.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/home/screen_home/screen_home.dart';

class TabletScreenHomeBody extends StatelessWidget {
  const TabletScreenHomeBody({
    super.key,
    required this.kHeight,
    required this.kWidth,
  });

  final double kHeight;
  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                width: kWidth / 2,
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
            ],
          ),
          10.vSpace,
          TabletSecondoryBannerWidget(
            kWidth: kWidth,
            kHeight: kHeight,
          )
        ],
      ),
    );
  }
}

class TabletSecondoryBannerWidget extends StatelessWidget {
  const TabletSecondoryBannerWidget({
    super.key,
    required this.kWidth,
    required this.kHeight,
  });

  final double kWidth;
  final double kHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(117, 255, 11, 11),
            Color.fromARGB(136, 0, 255, 229),
          ],
        ),
      ),
      height: kHeight / 3,
      width: kWidth / 2.6,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomeGoogleFont(
                text: 'In Demand', size: 18, weight: FontWeight.w500),
            // 5.vSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 18, 58, 255),
                  ),
                  height: kHeight / 8,
                  width: kWidth / 5.5,
                ),
                5.hSpace,
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 11, 182, 137),
                      ),
                      height: kHeight / 17,
                      width: kWidth / 6,
                    ),
                    5.vSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 33, 192, 24),
                      ),
                      height: kHeight / 17,
                      width: kWidth / 6,
                    ),
                  ],
                ),
                5.hSpace,

                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: const Color.fromARGB(255, 211, 255, 14),
                //   ),
                //   height: kHeight / 8,
                //   width: kWidth / 3,
                // ),
                // 5.hSpace,
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: const Color.fromARGB(255, 255, 14, 99),
                //   ),
                //   height: kHeight / 8,
                //   width: kWidth <= 800 ? kWidth / 7.4 : kWidth / 7,
                // ),
              ],
            ),
            // 5.vSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 224, 13, 13),
              ),
              height: kHeight / 18,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 18, 58, 255),
              ),
              height: kHeight / 10,
              width: double.infinity,
            ),
            1.vSpace,
          ],
        ),
      ),
    );
  }
}
