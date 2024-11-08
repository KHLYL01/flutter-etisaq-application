import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/app_colors.dart';

class LayoutController extends GetxController {
  RxInt currentIndex = 0.obs;

  late PageController pageController;

  onPressed(int value) {
    currentIndex(value);
    pageController.animateToPage(
      currentIndex.value,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  onPageChange(int value) {
    currentIndex(value);
  }

  getColor(int value) {
    return value == currentIndex.value ? AppColors.secondColor : null;
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
