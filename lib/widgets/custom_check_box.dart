import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/shards/check_box_controller.dart';
import '../../core/extensions/widget_extension.dart';
import '../core/constant/app_texts.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    Key? key,
    required this.title,
    required this.tag,
  }) : super(key: key);

  final String title;
  final String tag;

  @override
  Widget build(BuildContext context) {
    CheckBoxController controller = Get.put(CheckBoxController(), tag: tag);
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            side: const BorderSide(strokeAlign: 2),
            value: controller.value.value,
            onChanged: (value) => controller.changeValue(value!),
          ),
          SizedBox(
            child: Text(
              title,
              style: AppTextStyles.semiBold16(),
            ),
          ),
        ],
      ).onTap(
        () => controller.changeValue(!controller.value.value),
      ),
    );
  }
}
