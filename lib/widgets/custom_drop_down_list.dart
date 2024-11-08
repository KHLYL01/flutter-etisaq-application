import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';
import '../controller/shards/drop_down_list_controller.dart';
import 'custom_search_text_field.dart';

class CustomDropDownList extends StatelessWidget {
  const CustomDropDownList({
    Key? key,
    required this.title,
    required this.tag,
    this.enableSearch = true,
  }) : super(key: key);
  final String title;
  final String tag;
  final bool enableSearch;
  @override
  Widget build(BuildContext context) {
    DropDownListController controller =
        Get.find<DropDownListController>(tag: tag);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold18(),
        ).paddingOnly(bottom: 8),
        SizedBox(
          child: TextFormField(
            keyboardType: TextInputType.none,
            controller: controller.textController,
            showCursor: false,
            textInputAction: TextInputAction.none,
            enableInteractiveSelection: false,
            enableSuggestions: false,
            onTap: () {
              Get.bottomSheet(
                BottomSheet(
                  onClosing: () {},
                  builder: (context) {
                    return GetBuilder<DropDownListController>(
                      tag: tag,
                      builder: (controller) => SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (enableSearch)
                              // CustomSearchField(
                              //   controller: controller.searchController,
                              //   onChange: (value) {
                              //     controller.search(value);
                              //   },
                              // ),
                              CustomSearchTextField(
                                controller: controller.searchController,
                                hint: "Search",
                                onChanged: (value) {
                                  controller.search(value);
                                },
                              ),
                            if (controller.searchList.isEmpty)
                              const Text("not Found")
                                  .paddingSymmetric(vertical: 32),
                            ...List.generate(
                              controller.searchList.length,
                              (index) {
                                String item = controller.searchList[index];
                                return ListTile(
                                  onTap: () {
                                    controller.textController.text = item;
                                    Get.back();
                                    controller.searchController.clear();
                                    controller.search('');
                                  },
                                  title: Text(item),
                                );
                              },
                            ),
                          ],
                        ).paddingOnly(right: 16, left: 16, top: 16, bottom: 8),
                      ),
                    );
                  },
                ),
              );
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              suffixIcon: Transform.rotate(
                angle: pi / 2,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey.shade800,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
          ),
        )
      ],
    );
  }
}
