import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_sizes.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.elevatedButtonHeight,
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
