import 'package:flutter/material.dart';
import 'package:tatware_test/model/job.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.75,
      builder: (context, controller) => DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.radius30),
            topRight: Radius.circular(AppSizes.radius30),
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView.separated(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.padding8, vertical: AppSizes.padding16),
              controller: controller,
              itemBuilder: (context, index) =>
                  _JobItem(job: AppStrings.jobs[index]),
              separatorBuilder: (context, index) => const SizedBox(
                height: AppSizes.space8,
              ),
              itemCount: AppStrings.jobs.length,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: AppSizes.padding8, bottom: AppSizes.padding16),
              child: SizedBox(
                width: AppSizes.bottomSheetIndicatorWidth,
                height: AppSizes.bottomSheetIndicatorHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColors.scrollableSheetIndicatorColor,
                      borderRadius: BorderRadius.circular(AppSizes.radius12)),
                ),
              ),
            ),
          ],
        ),
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
