import 'package:flutter/material.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class CustomSectionHeader extends StatelessWidget {
  const CustomSectionHeader(
      {super.key, required this.header, required this.viewSeeAll, this.action});

  final String header;
  final bool viewSeeAll;
  final VoidCallback? action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        Text(
          header,
          style: TextStyles.font18DarkBlueWeightSemiBold,
        ),

        // SeeAll
        if (viewSeeAll)
          GestureDetector(
            onTap: action,
            child: Text(
              'See All',
              style: TextStyles.font12PrimaryWeightRegular,
            ),
          )
      ],
    );
  }
}
