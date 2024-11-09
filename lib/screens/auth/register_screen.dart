import 'package:etisaq/core/constant/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/app_images.dart';
import '../../controller/shards/keyboard_controller.dart';
import '../../core/extensions/widget_extension.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    KeyboardController keyboardController = Get.put(KeyboardController());

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -80,
            right: 0,
            left: 0,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                AppImages.mask,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.height / 20),
              SvgPicture.asset(
                AppImages.etisaq,
                height: 120,
              ),
              SizedBox(height: context.height / 20),
              CustomTextField(
                hint: 'الاسم الأول',
                controller: controller.email,
                textInputType: TextInputType.emailAddress,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 80),
              CustomTextField(
                hint: 'الاسم الأخير',
                controller: controller.email,
                textInputType: TextInputType.emailAddress,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 80),
              CustomTextField(
                hint: 'اسم المستخدم باللغة الانكليزية',
                controller: controller.email,
                textInputType: TextInputType.emailAddress,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 80),
              CustomTextField(
                hint: 'البريد الالكتروني',
                controller: controller.email,
                textInputType: TextInputType.emailAddress,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 80),
              CustomTextField(
                hint: 'كلمة المرور',
                controller: controller.password,
                textInputType: TextInputType.visiblePassword,
                isSecret: true,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 80),
              CustomTextField(
                hint: 'تأكيد كلمة المرور',
                controller: controller.password,
                textInputType: TextInputType.visiblePassword,
                isSecret: true,
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 32),
              CustomElevatedButton(
                title: 'تسجيل الدخول',
                onPressed: () {},
              ).paddingSymmetricWidth14(),
              SizedBox(height: context.height / 32),
              if (!keyboardController.isOpen.value)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Divider(
                      color: Color(0xFFE6E6E6),
                      height: 1,
                      endIndent: 10,
                    ).expanded(flex: 1),
                    Text(
                      "or continue with",
                      style: AppTextStyles.regular14(
                          color: const Color(0xFF828282)),
                    ),
                    const Divider(
                      color: Color(0xFFE6E6E6),
                      height: 1,
                      indent: 10,
                    ).expanded(flex: 1),
                  ],
                ).paddingSymmetricWidth14(),
              if (!keyboardController.isOpen.value)
                SizedBox(height: context.height / 32),
              if (!keyboardController.isOpen.value)
                CustomElevatedButton(
                  title: 'Google',
                  iconPath: AppImages.google,
                  onPressed: () {},
                  backgroundColor: const Color(0xFFEEEEEE),
                  foregroundColor: Colors.black,
                ).paddingSymmetricWidth14(),
            ],
          ).align(alignment: const Alignment(0, -.1)),
        ],
      ),
    );
  }
}
