import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/extensions/widget_extension.dart';
import '../core/constant/app_colors.dart';
import '../core/constant/app_images.dart';
import '../core/constant/app_texts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.subtitle,
    this.image = AppImages.etisaqText,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;

  @override
  Size get preferredSize => Size.fromHeight(Get.context!.height / 5);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: AppColors.mainColor,
        title: SizedBox(
          height: context.height / 5,
          width: context.width,
          child: Stack(
            children: [
              SizedBox(
                width: context.width,
                child: Image.asset(AppImages.etisaqText, fit: BoxFit.fill),
              ).align(alignment: Alignment.bottomCenter),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.bold28(color: AppColors.secondColor),
                  ),
                  SizedBox(height: context.height / 80),
                  Text(
                    subtitle,
                    style: AppTextStyles.regular16(
                        color: Colors.white, height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                ],
              ).align(alignment: Alignment.center),
              IconButton(
                icon: SvgPicture.asset(
                  AppImages.arrowLeft,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
              ).paddingOnly(left: 16).align(alignment: Alignment.topLeft),
            ],
          ),
        ),
        toolbarHeight: context.height / 4.2,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
    );
  }
}
