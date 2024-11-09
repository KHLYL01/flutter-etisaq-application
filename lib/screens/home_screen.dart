import 'package:etisaq/core/constant/app_colors.dart';
import 'package:etisaq/core/constant/app_texts.dart';
import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constant/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AppImages.etisaq, height: 53),
        centerTitle: true,
        leading: SvgPicture.asset(
          AppImages.menu,
        ).paddingOnly(left: 0, right: 24),
        actions: [
          SvgPicture.asset(AppImages.user).paddingOnly(left: 16),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: context.height / 80),
          Stack(
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
                      style: AppTextStyles.regular16(
                          color: Colors.white, height: 1.6),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: context.height / 24),
          Text(
            'المساقات التعليمية',
            style: AppTextStyles.bold18(color: AppColors.mainColor),
          ),
          Divider(
            color: AppColors.secondColor,
            thickness: 2,
            height: 20,
            indent: context.width / 2.6,
            endIndent: context.width / 2.6,
          ),
          SizedBox(height: context.height / 24),
          Container(
            height: context.height / 14,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainColor, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "التكوين العلمي",
                  style: AppTextStyles.regular20(color: AppColors.mainColor),
                ),
                SvgPicture.asset(AppImages.arrowLeft),
              ],
            ).paddingSymmetricWidth24(),
          ).onTap(() {}).paddingSymmetricWidth14(),
          SizedBox(height: context.height / 40),
          Container(
            height: context.height / 14,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainColor, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "برنامج الاجازة",
                  style: AppTextStyles.regular20(color: AppColors.mainColor),
                ),
                SvgPicture.asset(AppImages.arrowLeft),
              ],
            ).paddingSymmetricWidth24(),
          ).onTap(() {}).paddingSymmetricWidth14()
        ],
      ),
    );
  }
}
