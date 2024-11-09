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
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              AppImages.mask,
              fit: BoxFit.fill,
            ),
          ).align(alignment: Alignment.topCenter),
          SvgPicture.asset(
            AppImages.etisaq,
            width: context.width / 2,
          ).align(alignment: Alignment.center),
        ],
      ),
    );
  }
}
