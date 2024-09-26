import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Welcoming Message
        WelcomMessage(name: 'Mustafa'),

        Spacer(),

        // Notification Alarm
        NotificationAlarm(),
      ],
    );
  }
}

class WelcomMessage extends StatelessWidget {
  const WelcomMessage({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, $name',
          style: TextStyles.font18DarkBlueWeightBold,
        ),
        SpacingHelper.verticalSpacing(6),
        Text(
          'How Are You Today?',
          style: TextStyles.font12GreyWeightRegular,
        )
      ],
    );
  }
}

class NotificationAlarm extends StatelessWidget {
  const NotificationAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24.0,
      backgroundColor: CColors.lightestGrey,
      child: SvgPicture.asset('assets/svgs/alert.svg'),
    );
  }
}
