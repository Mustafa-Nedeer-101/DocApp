import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/theme/text_styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // Doctor Image
          CachedNetworkImage(
            imageUrl:
                "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: CColors.lightGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Space
          horizontalSpacing(16),

          // Doctor Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  'Name',
                  style: TextStyles.font18DarkBlueWeightBold,
                  overflow: TextOverflow.ellipsis,
                ),

                verticalSpacing(5),

                //
                Text(
                  '"General" | "RSUD gatot subroto"',
                  style: TextStyles.font12GreyWeightMedium,
                ),

                verticalSpacing(5),

                // Email
                Text(
                  'Email',
                  style: TextStyles.font12GreyWeightMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
