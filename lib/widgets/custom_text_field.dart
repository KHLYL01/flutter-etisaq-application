import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../core/constant/app_colors.dart';
import '../../core/constant/app_texts.dart';
import '../controller/shards/obscure_controller.dart';
import '../../core/extensions/widget_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
    this.validator,
    this.textInputType = TextInputType.text,
    this.hint,
    this.isSecret = false,
    this.isDatePicker = false,
  }) : super(key: key);

  final String title;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String? hint;
  final bool isSecret;
  final bool isDatePicker;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    Get.put(ObscureController());
    return GetBuilder<ObscureController>(
      builder: (secretController) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
                AppTextStyles.semiBold18(color: Colors.black.withOpacity(.7)),
          ).paddingOnly(bottom: 8),
          TextFormField(
            keyboardType: textInputType,
            controller: controller,
            validator: validator,
            obscureText: isSecret ? secretController.obscure : false,
            enableInteractiveSelection: !isDatePicker,
            showCursor: !isDatePicker,
            onTap: isDatePicker
                ? () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1940),
                      lastDate: DateTime.now(),
                    );
                    if (date == null) {
                      return;
                    }
                    controller.text = DateFormat.yMd().format(date).toString();
                  }
                : null,
            decoration: InputDecoration(
              hintText: hint,
              contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              suffixIcon: isSecret
                  ? IconButton(
                      onPressed: () => secretController.changeObscure(),
                      icon: Icon(
                        secretController.obscure
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: secretController.obscure
                            ? Colors.grey.shade800
                            : AppColors.mainColor,
                        // size: 24,
                      ),
                    ).paddingDirectional(
                      const EdgeInsetsDirectional.only(end: 8),
                    )
                  : null,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
          ),
        ],
      ).paddingOnly(bottom: 10),
    );
  }
}
