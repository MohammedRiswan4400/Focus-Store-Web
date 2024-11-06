import 'package:focus_mobiles_web/view/home/screen_home/screen_home.dart';
import 'package:get/get.dart';

class AppRoutes {
  // Goto Home screen\\
  static goFromSplashScreen() async {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
    ).then(
      (value) {
        Get.offAll(const ScreenHome());
      },
    );
  }
}
