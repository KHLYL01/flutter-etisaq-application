import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';
import '../core/constant/app_colors.dart';
import '../core/constant/app_images.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  final String title;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 10,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color(0x807F90AD),
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppTextStyles.regular20(),
        ),
        leading: CircleAvatar(
          radius: context.height / 36,
          backgroundColor: AppColors.mainColor,
          child: Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 24,
              fontFamily: 'Alexandria',
            ),
          ),
        ),
        trailing: SvgPicture.asset(AppImages.expandLeft),
      ).center(),
    );
  }
}
