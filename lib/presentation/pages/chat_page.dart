import 'package:flutter/material.dart';
import 'package:tatware_test/presentation/widgets/app_divider.dart';
import 'package:tatware_test/presentation/widgets/chat_item.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';
import 'package:tatware_test/utilities/router/app_routes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  padding: const EdgeInsets.all(AppSizes.padding16),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      ChatItem(chatMessage: AppStrings.messages[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: AppSizes.space16,
                      ),
                  itemCount: AppStrings.messages.length),
            ),
            const Center(
              child: RadioButtonGroup(),
            ),
            const AppDivider(),
            const _ChatTextField()
          ],
        ),
      ),
    );
  }
}

class _ChatTextField extends StatelessWidget {
  const _ChatTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.padding16),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: AppSizes.elevatedButtonHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.radius8),
                  color: AppColors.lightGreyColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.language,
                        size: AppSizes.iconSize20,
                        color: AppColors.greyColor,
                      ),
                      const SizedBox(
                        width: AppSizes.space8,
                      ),
                      Expanded(
                        child: Text(
                          AppStrings.typeSomething,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: AppColors.greyColor,
                                  fontSize: AppSizes.textSize14),
                        ),
                      ),
                      const SizedBox(
                        width: AppSizes.space8,
                      ),
                      Image.asset(
                        AppStrings.mic,
                        width: AppSizes.iconSize20,
                        height: AppSizes.iconSize20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: AppSizes.space14,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, AppRoutes.homePageRoute),
            child: Image.asset(
              AppStrings.send,
              width: AppSizes.iconSize20,
              height: AppSizes.iconSize20,
            ),
          )
        ],
      ),
    );
  }
}

class RadioButtonGroup extends StatefulWidget {
  const RadioButtonGroup({Key? key}) : super(key: key);

  @override
  State<RadioButtonGroup> createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getCustomHorizontalPadding(context, 0.15),
          vertical: AppSizes.padding8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView(
            primary: false,
            shrinkWrap: true,
            children: AppStrings.checkMessagesList
                .map((e) => _CheckListItem(
                      title: e,
                    ))
                .toList(),
          ),
          const SizedBox(
            height: AppSizes.space8,
          ),
          Text(
            AppStrings.sayDone,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.lightGreyColor2,
                  fontSize: AppSizes.textSize14,
                ),
          ),
          const SizedBox(
            height: AppSizes.space8,
          ),
        ],
      ),
    );
  }
}

class _CheckListItem extends StatefulWidget {
  const _CheckListItem({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<_CheckListItem> createState() => _CheckListItemState();
}

class _CheckListItemState extends State<_CheckListItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.padding4),
        child: Row(
          children: [
            _isSelected
                ? const Icon(
                    Icons.check_circle,
                    color: AppColors.primaryColor,
                  )
                : const Icon(
                    Icons.circle,
                    color: AppColors.inActiveCheckColor,
                  ),
            const SizedBox(
              width: AppSizes.space8,
            ),
            Expanded(
              child: Text(
                widget.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: AppSizes.textSize14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
