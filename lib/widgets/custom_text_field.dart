import 'package:etisaq/core/constant/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controller/shards/obscure_controller.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    this.validator,
    this.isSecret = false,
    this.isDatePicker = false,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final bool isSecret;
  final bool isDatePicker;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    Get.put(ObscureController());
    return GetBuilder<ObscureController>(
      builder: (secretController) => SizedBox(
        height: context.height / 18,
        child: TextFormField(
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
            hintStyle: AppTextStyles.regular14(color: const Color(0xFFAAAAAA)),
            contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            // suffixIcon: isSecret
            //     ? IconButton(
            //         onPressed: () => secretController.changeObscure(),
            //         icon: Icon(
            //           secretController.obscure
            //               ? Icons.visibility_off
            //               : Icons.visibility,
            //           color: secretController.obscure
            //               ? Colors.grey.shade800
            //               : AppColors.mainColor,
            //           // size: 24,
            //         ),
            //       )
            //     : null,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ).paddingOnly(bottom: 10),
      ),
    );
  }
}
