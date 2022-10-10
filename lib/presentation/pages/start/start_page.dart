import 'package:flutter/material.dart';
import 'package:tatware_test/presentation/pages/start/widgets/locale_widget.dart';
import 'package:tatware_test/presentation/widgets/app_elevated_button.dart';
import 'package:tatware_test/presentation/widgets/title_widget.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';
import 'package:tatware_test/utilities/router/app_routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            AppStrings.startBackgroundImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          const _StartPageBody(),
        ],
      ),
    );
  }
}

class _StartPageBody extends StatelessWidget {
  const _StartPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.padding25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          TitleWidget(
            style: Theme.of(context).textTheme.headlineLarge!,
            iconSize: AppSizes.iconSize11,
          ),
          const SizedBox(
            height: AppSizes.space16,
          ),
          Text(
            AppStrings.expertFromEveryPlanet,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.greyColor),
          ),
          const Spacer(),
          AppElevatedButton(
            text: AppStrings.getStarted,
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.getStartPageRoute),
          ),
          const SizedBox(
            height: AppSizes.space16,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.doNotHaveAccount,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: AppStrings.signUp,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: AppColors.secondaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.space16,
          ),
          const LocaleWidget(),
        ],
      ),
    );
  }
}
