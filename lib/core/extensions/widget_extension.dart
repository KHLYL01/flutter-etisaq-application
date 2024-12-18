import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension CustomWidget on Widget {
  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget expanded({int? flex}) {
    return Expanded(
      flex: flex ?? 0,
      child: this,
    );
  }

  Widget padding(EdgeInsetsGeometry? padding) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: this,
    );
  }

  Widget paddingSymmetricWidth14() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.context!.width / 14),
      child: this,
    );
  }

  Widget paddingSymmetricWidth24() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.context!.width / 24),
      child: this,
    );
  }

  Widget paddingSymmetricWidth32() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.context!.width / 32),
      child: this,
    );
  }

  Widget paddingDirectional(EdgeInsetsDirectional? padding) {
    return Padding(
      padding: padding ?? const EdgeInsetsDirectional.all(8),
      child: this,
    );
  }

  Widget makeSafeArea() {
    return SafeArea(child: this);
  }

  Widget singleChildScrollView() {
    return SingleChildScrollView(
      child: this,
    );
  }

  Widget align({required AlignmentGeometry alignment}) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget fittedBox() {
    return FittedBox(
      child: this,
    );
  }

  Widget onTap(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }

  Widget onDoubleTap(VoidCallback onDoubleTap) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  Widget onLongPress(VoidCallback onLongPress) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: this,
    );
  }

  Widget willPopScope({required WillPopCallback onEvent}) {
    return WillPopScope(
      onWillPop: onEvent,
      child: this,
    );
  }
}
