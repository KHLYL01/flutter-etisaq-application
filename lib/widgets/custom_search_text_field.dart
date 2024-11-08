import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_texts.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    Key? key,
    required this.controller,
    this.hint,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hint;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFF9DAAFF).withOpacity(.46),
          offset: const Offset(0, 2),
          blurRadius: 4,
        )
      ]),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Font.apply(style: FontStyle.regular, size: 14),
          contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.5),
              width: .5,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.5),
              width: .5,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.5),
              width: .5,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.red,
              width: .5,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
      ),
    ).paddingOnly(bottom: 10);
  }
}
