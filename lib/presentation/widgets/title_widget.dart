import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.style,
    required this.iconSize,
  }) : super(key: key);
  final TextStyle style;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          AppStrings.oranos,
          style: style,
        ),
        Icon(
          Icons.circle,
          size: iconSize,
          color: AppColors.primaryColor,
        )
      ],
    );
  }
}
