import 'package:flutter/material.dart';
import 'package:tatware_test/model/job.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) => ListView(
        padding: const EdgeInsets.all(AppSizes.padding8),
        controller: scrollController,
        children: [
          const SizedBox(
            height: AppSizes.space40,
            child: Padding(
              padding: EdgeInsets.all(AppSizes.space16),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: AppSizes.bottomSheetIndicatorWidth,
                  height: AppSizes.bottomSheetIndicatorHeight,
                  child: ColoredBox(color: AppColors.lightGreyColor2),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  _JobItem(job: AppStrings.jobs[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: AppSizes.space8,
              ),
              itemCount: AppStrings.jobs.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _JobItem extends StatelessWidget {
  const _JobItem({Key? key, required this.job}) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          job.image,
          width: AppSizes.iconSize38,
        ),
        title: Text(job.title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: AppSizes.textSize14)),
        subtitle: Text(
          AppStrings.getExpertCount(job.numberOfExperts),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.greyColor, fontSize: AppSizes.textSize14),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: AppSizes.iconSize20,
        ),
      ),
    );
  }
}
