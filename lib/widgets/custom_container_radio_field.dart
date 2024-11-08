import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_colors.dart';
import '../../core/constant/app_texts.dart';
import '../controller/shards/container_radio_controller.dart';
import '../../core/extensions/widget_extension.dart';

class CustomContainerRadio extends StatelessWidget {
  const CustomContainerRadio({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    ContainerRadioController controller = Get.put(ContainerRadioController());
    return Obx(
      () => SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            list.length,
            (index) => Container(
              height: 50,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 4,
                  //     color: Colors.black.withOpacity(.25),
                  //   )
                  // ],
                  ),
              child: ElevatedButton(
                onPressed: controller.currentSelected.value == index
                    ? null
                    : () => controller.onSelect(index),
                style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    backgroundColor: AppColors.forthColor,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    disabledBackgroundColor: AppColors.mainColor),
                child: Text(
                  list[index],
                  style: AppTextStyles.bold16(
                    color: controller.currentSelected.value == index
                        ? Colors.white
                        : null,
                  ),
                ),
              ),
            )
                .paddingDirectional(
                  EdgeInsetsDirectional.only(end: index != 2 ? 8 : 0),
                )
                .expanded(flex: 1),
          ),
        ),
      ),
    );
  }
}
