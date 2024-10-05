import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      this.titleStyle,
      this.iconData,
      this.leadPadding,
      this.borderColor,
      this.borderWidth,
      this.tail,
      this.borderRadius});

  final String title;
  final TextStyle? titleStyle;
  final IconData? iconData;
  final double? leadPadding;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final Widget? tail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
      child: Row(
        children: [
          // Back arrow
          GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              padding: EdgeInsets.all(leadPadding ?? 8),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: borderColor ?? CColors.lightGrey,
                      width: borderWidth ?? 1.0),
                  borderRadius: BorderRadius.circular(borderRadius ?? 12)),
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),

          // Title
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: titleStyle ?? TextStyles.font18DarkBlueWeightSemiBold,
            ),
          ),

          // Tail
          if (tail != null) tail!,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
