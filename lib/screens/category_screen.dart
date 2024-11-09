import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:etisaq/widgets/category_item.dart';
import 'package:etisaq/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/app_routes.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> map = Get.arguments;

    return Scaffold(
      appBar: CustomAppBar(
        title: map['name'],
        subtitle: map['description'],
      ),
      body: Column(
        children: [
          SizedBox(height: context.height / 24),
          CategoryItem(
            title: map['categories'][0]['name'],
            number: map['categories'][0]['id'],
          ).onTap(
            () => Get.toNamed(
              AppRoutes.subcategoryScreen,
              arguments: map['categories'][0],
            ),
          ),
          SizedBox(height: context.height / 40),
          CategoryItem(
            title: map['categories'][1]['name'],
            number: map['categories'][1]['id'],
          ).onTap(
            () => Get.toNamed(
              AppRoutes.subcategoryScreen,
              arguments: map['categories'][1],
            ),
          ),
        ],
      ).paddingSymmetricWidth14(),
    );
  }
}
