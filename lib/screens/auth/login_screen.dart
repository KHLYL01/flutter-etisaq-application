import 'package:etisaq/core/constant/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/app_images.dart';
import '../../../core/constant/app_routes.dart';
import '../../controller/shards/keyboard_controller.dart';
import '../../core/extensions/widget_extension.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    KeyboardController keyboardController = Get.put(KeyboardController());

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              AppImages.mask,
              fit: BoxFit.fill,
            ),
          ).align(alignment: Alignment.topCenter),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.height / 40),
              SvgPicture.asset(
                AppImages.etisaq,
              ),
              SizedBox(height: context.height / 20),
              CustomTextField(
                hint: 'البريد الالكتروني أو اسم المستخدم',
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
              SizedBox(height: context.height / 32),
              CustomElevatedButton(
                title: 'تسجيل الدخول',
                onPressed: () {
                  Get.offNamed(AppRoutes.homeScreen);
                },
              ).paddingSymmetricWidth14(),
              if (!keyboardController.isOpen.value)
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
              if (!keyboardController.isOpen.value)
                CustomTextButton(
                  title: "ليس لديك حساب ؟ سجل الآن",
                  onPressed: () {
                    Get.toNamed(AppRoutes.registerScreen);
                  },
                )
            ],
          ).align(alignment: const Alignment(0, -.1)),
        ],
      ),
    );
  }
}
