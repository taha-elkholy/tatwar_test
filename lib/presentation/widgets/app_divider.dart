import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: AppSizes.space8,
      thickness: AppSizes.stroke05,
      color: AppColors.greyColor.withOpacity(0.5),
    );
  }
}
