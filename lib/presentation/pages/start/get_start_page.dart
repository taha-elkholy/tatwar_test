import 'package:flutter/material.dart';
import 'package:tatware_test/presentation/widgets/app_elevated_button.dart';
import 'package:tatware_test/presentation/pages/start/widgets/locale_widget.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';
import 'package:tatware_test/utilities/router/app_routes.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.padding25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Transform.translate(
                  offset: const Offset(AppSizes.offset30, AppSizes.zeroOffset),
                  child: Image.asset(
                    AppStrings.getStartPathImage,
                    width: AppSizes.pathWidth,
                    height: AppSizes.pathHeight,
                  ),
                ),
                SizedBox(
                  width: AppSizes.pathWidth,
                  height: AppSizes.textPathHeight200,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.getStartPageText1,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        TextSpan(
                          text: AppStrings.getStartPageText2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: AppStrings.getStartPageText3,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Transform.translate(
              offset: const Offset(-AppSizes.offset15, AppSizes.zeroOffset),
              child: Image.asset(
                AppStrings.getStartImage,
                width: AppSizes.botImageWidth,
                height: AppSizes.botImageHeight,
              ),
            ),
            const SizedBox(
              height: AppSizes.space16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.getCustomHorizontalPadding(context, 0.25),
              ),
              child: AppElevatedButton(
                text: AppStrings.next,
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.chatPageRoute),
              ),
            ),
            const SizedBox(
              height: AppSizes.space50,
            ),
            const LocaleWidget(),
          ],
        ),
      ),
    );
  }
}
