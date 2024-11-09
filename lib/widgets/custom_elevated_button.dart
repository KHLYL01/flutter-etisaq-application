import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.height = 40,
    this.backgroundColor = AppColors.mainColor,
    this.foregroundColor = Colors.white,
    this.radius = 8,
    this.iconPath,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double radius;
  final String? iconPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            side: const BorderSide(color: AppColors.mainColor, width: .5),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.medium16(),
            ).paddingOnly(top: 4),
            if (iconPath != null)
              Container(
                  child: SvgPicture.asset(iconPath!).paddingOnly(right: 8)),
          ],
        ),
      ),
    );
  }
}
