import 'dart:async';

import 'package:get/get.dart';
import '../../core/constant/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(
      const Duration(seconds: 2),
      () => Get.offNamed(AppRoutes.loginScreen),
    );
    super.onInit();
  }
}
