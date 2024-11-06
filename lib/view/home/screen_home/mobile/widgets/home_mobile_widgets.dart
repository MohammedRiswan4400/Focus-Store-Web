import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/core/colors/colors.dart';
import 'package:focus_mobiles_web/core/constant/const_widgets.dart';
import 'package:focus_mobiles_web/view/widgets/main_widgets.dart';

class MobileScreenHomeBody extends StatelessWidget {
  const MobileScreenHomeBody({
    super.key,
    required this.kHeight,
    required this.kWidth,
  });

  final double kHeight;
  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            BannerWidget(kHeight: kHeight),
            10.vSpace,
            MobileSecondoryBannerWidget(kWidth: kWidth, kHeight: kHeight),
            10.vSpace,
            TabBarWidget(kWidth: kWidth),
            10.vSpace,
            const EMIfinanceWidgets(),
            10.vSpace,
            Container(
              height: 360,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.kPrimaryColor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 10.vSpace,
                    CustomeGoogleFont(
                      text: 'Premium used smart phones',
                      size: 14,
                      weight: FontWeight.bold,
                      color: AppColors.kWhiteColor,
                    ),
                    GridView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 5,
                          mainAxisExtent: 150,
                          crossAxisCount: 2,
                          mainAxisSpacing: 5),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/kochi1.JPG',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: kWidth / 2,
                                  // width: double.infinity,
                                ),
                              ),
                              Positioned(
                                // top: 0,
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  height: 60,
                                  width: kWidth / 2.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        139, 255, 255, 255),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomeGoogleFont(
                                          text: 'iPhone 12 pro max',
                                          size: 10,
                                          weight: FontWeight.bold,
                                          color: AppColors.kBlackColor,
                                        ),
                                        CustomeGoogleFont(
                                          text: '256 GB',
                                          size: 10,
                                          weight: FontWeight.bold,
                                          color: AppColors.kBlackColor,
                                        ),
                                        CustomeGoogleFont(
                                          text: '34,999',
                                          size: 10,
                                          weight: FontWeight.bold,
                                          color: AppColors.kBlackColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.kHeight,
  });

  final double kHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.kBlackColor,
      ),
      height: kHeight / 4,
      // : isTab
      //     ? kHeight / 3
      //     : kHeight / 2,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/banner3.png',
          fit: BoxFit.cover,
          // width: double.infinity,
          // height: 600,
        ),
      ),
    );
  }
}

class MobileSecondoryBannerWidget extends StatelessWidget {
  const MobileSecondoryBannerWidget({
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
            Color.fromARGB(59, 0, 0, 0),
            Color.fromARGB(135, 0, 0, 0),
          ],
        ),
      ),
      // height: kHeight / 2,
      width: kWidth,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeGoogleFont(
                text: 'In Demand', size: 14, weight: FontWeight.w500),
            // 5.vSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 18, 58, 255),
                  ),
                  height: kHeight / 8,
                  width: kWidth / 6,
                  child: ImageWidget(
                    kHeight: kHeight / 8,
                    kWidth: kWidth / 6,
                    image: 'assets/images/broto1.jpeg',
                  ),
                ),
                5.hSpace,
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 11, 182, 137),
                      ),
                      height: kHeight / 17,
                      width: kWidth / 6,
                      child: ImageWidget(
                        kHeight: kHeight / 17,
                        kWidth: kWidth / 6,
                        image: 'assets/images/edappallyC.jpeg',
                      ),
                    ),
                    5.vSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 33, 192, 24),
                      ),
                      height: kHeight / 17,
                      width: kWidth / 6,
                      child: ImageWidget(
                        kHeight: kHeight / 17,
                        kWidth: kWidth / 6,
                        image: 'assets/images/glass.jpeg',
                      ),
                    ),
                  ],
                ),
                5.hSpace,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 211, 255, 14),
                  ),
                  height: kHeight / 8,
                  width: kWidth / 3,
                  child: ImageWidget(
                    kHeight: kHeight / 8,
                    kWidth: kWidth / 3,
                    image: 'assets/images/hillPalace.jpeg',
                  ),
                ),
                5.hSpace,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 255, 14, 99),
                  ),
                  height: kHeight / 8,
                  width: kWidth <= 800 ? kWidth / 7.4 : kWidth / 7,
                  child: ImageWidget(
                    kHeight: kHeight / 8,
                    kWidth: kWidth / 3,
                    image: 'assets/images/hillpalase2.jpeg',
                  ),
                ),
              ],
            ),
            5.vSpace,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 220, 224, 13),
              ),
              height: kHeight / 18,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.kWidth,
  });

  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      width: double.infinity,
      // color: Colors.brown,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: TabBar(
                dividerHeight: 0,
                physics: const NeverScrollableScrollPhysics(),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.kFigmaGreyColor,
                ),
                indicatorPadding: const EdgeInsets.all(1),
                // indicatorColor: Colors.black,
                labelColor: AppColors.kBlackColor,
                unselectedLabelColor: AppColors.kWhiteColor,
                tabs: <Widget>[
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomeGoogleFont(
                        text: 'New Smart Phones',
                        size: 12,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: CustomeGoogleFont(
                          text: 'Used Smart Phones',
                          size: 12,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          5.vSpace,
          Expanded(
            child: TabBarView(children: [
              NewSmartPhonesTab(kWidth: kWidth),
              NewSmartPhonesTab(kWidth: kWidth),
            ]),
          )
        ],
      ),
    );
  }
}

class EMIfinanceWidgets extends StatelessWidget {
  const EMIfinanceWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: kHeight / 2.5,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 123, 0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: CustomeGoogleFont(
                text: '%',
                size: 300,
                weight: FontWeight.bold,
                color: const Color.fromARGB(77, 255, 255, 255),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 10.vSpace,
                CustomeGoogleFont(
                  text: 'Best EMI offers',
                  size: 14,
                  weight: FontWeight.bold,
                  color: AppColors.kWhiteColor,
                ),
                Container(
                  color: const Color.fromARGB(107, 255, 255, 255),
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CustomeGoogleFont(
                      text: 'Bajaj finserve',
                      size: 14,
                      weight: FontWeight.bold,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(81, 255, 255, 255),
                  height: 100,
                  width: double.infinity,
                ),
                Container(
                  color: const Color.fromARGB(64, 255, 255, 255),
                  height: 100,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewSmartPhonesTab extends StatelessWidget {
  const NewSmartPhonesTab({
    super.key,
    required this.kWidth,
  });

  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomeGoogleFont(
            text: 'New Arrivals', size: 14, weight: FontWeight.bold),
        GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisExtent: 125,
                mainAxisSpacing: 5),
            itemBuilder: (context, index) {
              return ProductWidget(kWidth: kWidth);
            }),
        const Align(alignment: Alignment.topRight, child: SeemoreWidget()),
      ],
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.kWidth,
  });

  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kFigmaGreyColor,
      width: kWidth / 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: AppColors.kWhiteColor,
                  ),
                  height: 90,
                  width: kWidth / 4.5,
                ),
                SizedBox(
                  height: 90,
                  width: kWidth / 5.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeGoogleFont(
                          text: 'iPhone 12 pro',
                          size: 3,
                          textAlign: TextAlign.start,
                          // lineCount: 1,
                          weight: FontWeight.w500),
                      CustomeGoogleFont(
                          text: '256 GB',
                          size: 3,
                          lineCount: 1,
                          weight: FontWeight.w500),
                      CustomeGoogleFont(
                          text: '84,999  ❌',
                          size: 3,
                          lineCount: 1,
                          color: AppColors.kGreyColor,
                          weight: FontWeight.w400),
                      CustomeGoogleFont(
                          text: '74,999  ✅',
                          size: 3,
                          lineCount: 1,
                          color: AppColors.kPrimaryColor,
                          weight: FontWeight.w500),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                    color: AppColors.kWhiteColor,
                  ),
                  height: 20,
                  width: kWidth / 3,
                  child: Center(
                    child: CustomeGoogleFont(
                        text: 'Apple', size: 8, weight: FontWeight.bold),
                  ),
                ),
                const Icon(
                  Icons.favorite_border,
                  size: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SeemoreWidget extends StatelessWidget {
  const SeemoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.kFigmaGreyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: CustomeGoogleFont(
            text: 'See more', size: 12, weight: FontWeight.w500),
      ),
    );
  }
}
