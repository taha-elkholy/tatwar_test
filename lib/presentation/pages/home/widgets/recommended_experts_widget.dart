import 'package:flutter/material.dart';
import 'package:tatware_test/model/expert_man.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class RecommendedExpertsWidget extends StatelessWidget {
  const RecommendedExpertsWidget({Key? key, required this.experts})
      : super(key: key);
  final List<ExpertMan> experts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.recommendedExperts,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.textSize16,
                  ),
            ),
            Icon(
              Icons.more_horiz,
              color: AppColors.greyColor.withOpacity(.7),
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.space16,
        ),
        GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: AppSizes.space8,
              mainAxisSpacing: AppSizes.space8),
          itemBuilder: (context, index) =>
              _ExpertItem(expertMan: experts[index]),
          itemCount: experts.length,
        ),
      ],
    );
  }
}

class _ExpertItem extends StatelessWidget {
  const _ExpertItem({Key? key, required this.expertMan}) : super(key: key);
  final ExpertMan expertMan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: AppSizes.cardHeight * 0.6,
            ),
            child: Image.asset(
              expertMan.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.space8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppStrings.star,
                        width: AppSizes.iconSize15,
                        height: AppSizes.iconSize15,
                      ),
                      Text(
                        ' (${expertMan.rating})',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: AppColors.lightGreyColor2),
                      ),
                      const Spacer(),
                      Image.asset(
                        AppStrings.heart,
                        width: AppSizes.iconSize15,
                        height: AppSizes.iconSize15,
                      )
                    ],
                  ),
                  Text(
                    expertMan.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: AppSizes.textSize14,
                          color: AppColors.greyColor,
                        ),
                  ),
                  Text(
                    expertMan.specialization,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.lightGreyColor2,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
