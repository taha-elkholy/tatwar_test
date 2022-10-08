import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class OnlineExpertsWidget extends StatelessWidget {
  const OnlineExpertsWidget({Key? key, required this.names}) : super(key: key);
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.onlineExperts,
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
        SizedBox(
          height: AppSizes.horizontalListHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: AppSizes.space8,
            ),
            itemBuilder: (context, index) => _OnlineExpertItem(
              name: names[index],
            ),
            itemCount: names.length,
          ),
        ),
      ],
    );
  }
}

class _OnlineExpertItem extends StatelessWidget {
  const _OnlineExpertItem({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: const [
            SizedBox(
                width: AppSizes.iconSize59,
                height: AppSizes.iconSize59,
                child: CircleAvatar(
                  backgroundColor: AppColors.circularAvatarColor,
                )),
            Icon(
              Icons.circle,
              size: AppSizes.iconSize11,
              color: CupertinoColors.systemGreen,
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.space8,
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.lightGreyColor2,
              ),
        ),
      ],
    );
  }
}
