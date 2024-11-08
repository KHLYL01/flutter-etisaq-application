import 'package:etisaq/core/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constant/app_colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitPouringHourGlassRefined(
      color: AppColors.mainColor,
      strokeWidth: 1,
      size: 64,
    ).center();
  }
}
