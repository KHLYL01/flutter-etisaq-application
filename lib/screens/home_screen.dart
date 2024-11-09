import 'package:etisaq/core/constant/app_colors.dart';
import 'package:etisaq/core/constant/app_routes.dart';
import 'package:etisaq/core/constant/app_texts.dart';
import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:etisaq/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constant/app_images.dart';
import '../data/data_sources/static/statis.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          toolbarHeight: 80,
          title: SvgPicture.asset(AppImages.etisaq, height: 70),
          centerTitle: true,
          leading: SvgPicture.asset(
            AppImages.menu,
          ).paddingOnly(left: 0, right: 24),
          actions: [
            SvgPicture.asset(
              AppImages.user,
              height: 50,
            ).paddingOnly(left: 16),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: context.height / 80),
          const HomeCard(),
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
          ).onTap(() {
            Get.toNamed(
              AppRoutes.categoryScreen,
              arguments: homeList[0],
            );
          }).paddingSymmetricWidth14(),
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
          ).onTap(() {
            Get.toNamed(
              AppRoutes.categoryScreen,
              arguments: homeList[1],
            );
          }).paddingSymmetricWidth14()
        ],
      ),
    );
  }
}
