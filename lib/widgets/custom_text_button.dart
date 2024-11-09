import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.medium12(color: Colors.black),
        ).paddingOnly(top: 4),
      ),
    );
  }
}
