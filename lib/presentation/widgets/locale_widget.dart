import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class LocaleWidget extends StatelessWidget {
  const LocaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.language,
          color: AppColors.blackColor,
          size: AppSizes.iconSize16,
        ),
        const SizedBox(
          width: AppSizes.space8,
        ),
        Text(
          AppStrings.english,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
