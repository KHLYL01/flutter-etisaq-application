import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/register_controller.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_routes.dart';
import '../../../core/constant/app_texts.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_drop_down_list.dart';
import '../../core/extensions/widget_extension.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LinearProgressIndicator(
            color: AppColors.mainColor,
            value: 0.4,
            minHeight: 6,
          ).paddingSymmetric(vertical: 16, horizontal: context.width / 14),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListView(
            children: [
              const Text(
                'Let\'s Start',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ).paddingSymmetricWidth16(),
              SizedBox(height: context.height / 40),
              CustomTextField(
                title: 'First Name*',
                controller: controller.firstName,
                validator: (value) => null,
              ).paddingSymmetricWidth16(),
              CustomTextField(
                title: 'Last Name*',
                controller: controller.lastName,
                validator: (value) => null,
              ).paddingSymmetricWidth16(),
              CustomTextField(
                title: 'Date Of Birth*',
                hint: 'MM/DD/YYYY',
                controller: controller.dateOfBirth,
                textInputType: TextInputType.none,
                isDatePicker: true,
              ).paddingSymmetricWidth16().paddingOnly(bottom: 8),
              const CustomDropDownList(
                title: 'Country*',
                tag: 'Country',
              ).paddingSymmetricWidth16().paddingOnly(bottom: 8),
              const CustomDropDownList(
                title: 'Gender*',
                tag: 'Gender',
                enableSearch: false,
              ).paddingSymmetricWidth16().paddingOnly(bottom: 8),
              const CustomDropDownList(
                title: 'Language*',
                tag: 'Language',
                enableSearch: false,
              ).paddingSymmetricWidth16().paddingOnly(bottom: 8),
              SizedBox(height: context.height / 40),
              CustomElevatedButton(
                title: 'Continue',
                onPressed: () {},
              ).paddingSymmetricWidth16(),
              SizedBox(height: context.height / 40),
            ],
          ).expanded(flex: 1),
          const Divider(
            color: Colors.black,
            thickness: .5,
          ).paddingSymmetricWidth24(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: AppTextStyles.medium18(),
              ),
              CustomTextButton(
                title: 'Sign In',
                onPressed: () {
                  Get.offNamed(AppRoutes.loginScreen);
                },
              ),
            ],
          ),
          SizedBox(height: context.height / 80),
        ],
      ),
    ).makeSafeArea();
  }
}
