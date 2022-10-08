import 'package:flutter/material.dart';
import 'package:tatware_test/model/chat_message.dart';
import 'package:tatware_test/utilities/app_colors.dart';
import 'package:tatware_test/utilities/app_sizes.dart';
import 'package:tatware_test/utilities/app_strings.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.chatMessage}) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (chatMessage.isSent)
          const SizedBox(
            width: AppSizes.space50,
          ),
        if (!chatMessage.isSent) ...[
          SizedBox(
            width: AppSizes.iconSize38,
            height: AppSizes.iconSize38,
            child: CircleAvatar(
              backgroundColor: AppColors.lightGreyColor,
              child: Center(
                child: Image.asset(
                  AppStrings.chatBubble,
                  color: AppColors.primaryColor,
                  width: AppSizes.iconSize20,
                  height: AppSizes.iconSize20,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: AppSizes.space14,
          ),
        ],
        Expanded(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: AppSizes.chatItemMinHeight,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: (chatMessage.isSent)
                    ? AppColors.primaryColor
                    : AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(AppSizes.radius8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  AppSizes.padding8,
                ),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  heightFactor: 1,
                  child: Text(
                    chatMessage.text,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: AppSizes.textSize14,
                        color: (chatMessage.isSent)
                            ? AppColors.whiteColor
                            : AppColors.blackColor),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (!chatMessage.isSent)
          const SizedBox(
            width: AppSizes.space50,
          ),
        if (chatMessage.isSent)
          SizedBox(
            width: AppSizes.iconSize38,
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Image.asset(
                AppStrings.messageSeen,
                width: 22,
                height: 9,
              ),
            ),
          ),
      ],
    );
  }
}
