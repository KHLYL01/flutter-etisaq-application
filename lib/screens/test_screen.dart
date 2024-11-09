import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_check_box.dart';
import '../widgets/custom_drop_down_list.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_elevated_button.dart';
import '../../core/extensions/widget_extension.dart';
import '../core/functions/toast.dart';
import '../controller/shards/drop_down_list_controller.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DropDownListController(list: ["Male", "Female"]), tag: "Gender");
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   controller: Get.put(LayoutController()),
      // ),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          CustomTextField(
            hint: 'Username',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 8),
          CustomElevatedButton(
            title: 'Sign Up',
            onPressed: () {
              toast(msg: "sign up");
            },
          ),
          const SizedBox(height: 8),
          CustomTextButton(
            title: 'forget password?',
            onPressed: () {
              toast(msg: "forget password?");
            },
          ),
          const SizedBox(height: 8),
          const CustomCheckBox(
            title: 'Remember my username',
            tag: 'remember my username',
          ),
          const SizedBox(height: 8),
          const CustomDropDownList(
            title: "Gender",
            tag: "Gender",
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hint: "MM/DD/YYYY",
            isDatePicker: true,
            textInputType: TextInputType.none,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 100),
        ],
      ).paddingSymmetricWidth24(),
    ).makeSafeArea();
  }
}
