import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';
import '../../core/constant/app_texts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.foregroundColor = AppColors.secondColor,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: foregroundColor,
          textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.medium18(),
        ),
      ),
    );
  }
}
