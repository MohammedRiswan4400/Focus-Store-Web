import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:focus_mobiles_web/view/home/screen_home/screen_home.dart';
import 'package:focus_mobiles_web/view/splash/screen_splash.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return const GetMaterialApp(
          title: 'Focus Mobiles Web',
          home: ScreenHome(),
        );
      },
    );
  }
}
