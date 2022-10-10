import 'package:flutter/material.dart';
import 'package:tatware_test/presentation/pages/home/widgets/home_botom_sheet.dart';
import 'package:tatware_test/presentation/pages/home/widgets/online_experts_widget.dart';
import 'package:tatware_test/presentation/pages/home/widgets/recommended_experts_widget.dart';
import 'package:tatware_test/presentation/widgets/title_widget.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: AppSizes.space40,
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: AppSizes.padding16),
          child: Image.asset(
            AppStrings.profile,
          ),
        ),
        title: TitleWidget(
          style: Theme.of(context).appBarTheme.titleTextStyle!,
          iconSize: AppSizes.iconSize5,
        ),
        actions: [
          SizedBox(
            child: Image.asset(
              AppStrings.search,
              width: AppSizes.iconSize20,
              height: AppSizes.iconSize20,
            ),
          ),
          const SizedBox(
            width: AppSizes.space16,
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(AppSizes.padding16),
              children: [
                RecommendedExpertsWidget(
                  experts: AppStrings.experts,
                ),
                const SizedBox(
                  height: AppSizes.space40,
                ),
                OnlineExpertsWidget(names: AppStrings.names)
              ]),
          const HomeBottomSheet(),
        ],
      ),
    );
  }
}
