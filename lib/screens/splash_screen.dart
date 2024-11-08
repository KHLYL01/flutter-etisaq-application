import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/shards/splash_controller.dart';
import '../../core/constant/app_images.dart';
import '../../core/extensions/widget_extension.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(AppImages.logo)
              .align(alignment: const Alignment(0, -0.4)),
          const Text('please wait...')
              .align(alignment: const Alignment(0, 0.2)),
        ],
      ),
    ).makeSafeArea();
  }
}
