import '../../core/constant/app_texts.dart';
import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.height = 50,
    this.backgroundColor = AppColors.mainColor,
    this.foregroundColor = Colors.white,
    this.radius = 6,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)))),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.bold18(),
        ),
      ),
    );
  }
}
