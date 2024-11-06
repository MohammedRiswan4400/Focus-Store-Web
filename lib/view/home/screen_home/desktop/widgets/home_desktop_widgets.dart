import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/colors/colors.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';

class DesktopScreenHomeBody extends StatelessWidget {
  const DesktopScreenHomeBody({
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
                height: kHeight / 1.5,
                width: kWidth / 1.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/banner3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DesktopSecondoryBannerWidget(kWidth: kWidth, kHeight: kHeight)
            ],
          ),
          10.vSpace,
        ],
      ),
    );
  }
}

class DesktopSecondoryBannerWidget extends StatelessWidget {
  const DesktopSecondoryBannerWidget({
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
      height: kHeight / 1.5,
      width: kWidth / 3.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomeGoogleFont(
                text: 'In Demand', size: 22, weight: FontWeight.w500),
            // 5.vSpace,
            Container(
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black26,
                    height: kHeight / 1.65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.black26,
                          // height: kHeight / 10,
                          width: kWidth / 5.5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 18, 58, 255),
                                ),
                                height: kHeight / 4,
                                width: kWidth / 10,
                              ),
                              5.hSpace,
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 11, 182, 137),
                                    ),
                                    height: kHeight / 8.5,
                                    width: kWidth / 14,
                                  ),
                                  5.vSpace,
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(255, 13, 87, 9),
                                    ),
                                    height: kHeight / 8.5,
                                    width: kWidth / 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 90, 114, 236),
                          ),
                          height: kHeight / 10.2,
                          width: kWidth / 5.5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 185, 8),
                          ),
                          height: kHeight / 4.3,
                          width: kWidth / 5.5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 224, 13, 13),
                    ),
                    height: kHeight / 1.65,
                    width: kWidth / 18,
                  ),

                  // Column(
                  //   children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: const Color.fromARGB(255, 11, 182, 137),
                  //       ),
                  //       height: kHeight / 17,
                  //       width: kWidth / 6,
                  //     ),
                  //     5.vSpace,
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: const Color.fromARGB(255, 33, 192, 24),
                  //       ),
                  //       height: kHeight / 17,
                  //       width: kWidth / 6,
                  //     ),
                  //   ],
                  // ),
                  // 5.hSpace,

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
            ),
            // 5.vSpace,

            // 1.vSpace,
          ],
        ),
      ),
    );
  }
}
