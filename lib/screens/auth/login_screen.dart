import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_routes.dart';
import '../../widgets/custom_check_box.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../core/extensions/widget_extension.dart';
import '../../controller/shards/keyboard_controller.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    KeyboardController keyboardController = Get.put(KeyboardController());

    return Scaffold(
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            keyboardController.isOpen.value
                ? SizedBox(height: context.height / 20)
                : SizedBox(height: context.height / 8),
            SvgPicture.asset(
              AppImages.logo,
              width: 100,
            ).paddingSymmetricWidth16(),
            SizedBox(height: context.height / 16),
            CustomTextField(
              title: 'Email',
              controller: controller.email,
              textInputType: TextInputType.emailAddress,
            ).paddingSymmetricWidth16(),
            CustomTextField(
              title: 'Password',
              controller: controller.password,
              textInputType: TextInputType.visiblePassword,
              isSecret: true,
            ).paddingSymmetricWidth16(),
            const CustomCheckBox(
              title: 'Remember me',
              tag: 'Remember me',
            ).paddingSymmetric(horizontal: context.width / 24),
            keyboardController.isOpen.value
                ? SizedBox(height: context.height / 32)
                : SizedBox(height: context.height / 24),
            CustomElevatedButton(
              title: 'Sign In',
              onPressed: () {
              },
            ).paddingSymmetricWidth16(),
            keyboardController.isOpen.value
                ? const SizedBox()
                : CustomTextButton(
                    title: 'Forget password?',
                    onPressed: () {},
                  ).center().paddingSymmetricWidth16(),
            keyboardController.isOpen.value ? const SizedBox() : const Spacer(),
            keyboardController.isOpen.value
                ? const SizedBox()
                : CustomTextButton(
                    title: 'Set up your account',
                    onPressed: () {
                      Get.offNamed(AppRoutes.registerScreen);
                    },
                  )
                    .center()
                    .paddingSymmetricWidth16()
                    .paddingOnly(bottom: context.height / 32),
          ],
        ),
      ),
    ).makeSafeArea();
  }
}
