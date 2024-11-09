import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';
import '../core/constant/app_colors.dart';
import '../core/constant/app_images.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: context.height / 3.8,
              color: AppColors.mainColor,
            ),
            Container(
              height: context.height / 20,
              color: AppColors.secondColor,
            ),
          ],
        ),
        SizedBox(
          width: context.width,
          child: Image.asset(
            AppImages.mask2,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: -10,
          child: SizedBox(
            width: context.width,
            child: Image.asset(
              AppImages.etisaqText,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          width: context.width,
          height: context.height / 3.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.height / 20),
              Text(
                'أكاديمية اتساق',
                style: AppTextStyles.bold28(color: AppColors.secondColor),
              ),
              SizedBox(height: context.height / 80),
              Text(
                'منصة تعليميَّةٌ أُسِّست لتقدِّم نَهجًا تكامليًّا، في العلوم\nالعربيَّة والشَّرعيَّة والتَّربويَّة الإسلاميَّة، في بيئة علميَّة\nتفاعليَّة محفِّزة، وبرؤيةٍ طموحةٍ هادئةٍ؛لِتُحقِّقَ رسالَتها في\nبناء المعرفة، وتعزيز الوعي، وبناء الشَّخصيَّة المتوازنة.',
                style:
                    AppTextStyles.regular16(color: Colors.white, height: 1.6),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
