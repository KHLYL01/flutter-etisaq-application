import 'package:etisaq/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/subcategory_item.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> map = Get.arguments!;

    int length = (map['subcategories'] as List).length;

    return Scaffold(
      appBar: CustomAppBar(
        title: map['name'],
        subtitle: map['description'],
      ),
      body: ListView.separated(
        itemCount: length,
        itemBuilder: (context, index) {
          var item = map['subcategories'][index];
          return SubcategoryItem(
            title: item['title'],
            subtitle: item['subtitle'],
            imagePath: item['image'],
            rate: item['rate'],
          ).paddingOnly(
              top: index == 0 ? context.height / 40 : 0,
              bottom: index == length - 1 ? context.height / 40 : 0);
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: context.height / 40,
        ),
      ),
    );
  }
}
