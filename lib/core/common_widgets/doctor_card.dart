import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/theme/text_styles.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:shimmer/shimmer.dart';

class CustomDoctorCard extends StatelessWidget {
  const CustomDoctorCard(
      {super.key,
      required this.doctor,
      this.margin = 8.0,
      this.elevation = 1.0,
      this.padding = 8.0,
      this.subImage = 'assets/images/onboarding.png',
      this.color});

  final DoctorEntity doctor;
  final double margin;
  final double elevation;
  final double padding;
  final String subImage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: margin),
      elevation: elevation,
      color: color,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DoctorImage(
              imageUrl: doctor.photo ?? subImage,
            ),

            // Space
            SizedBox(
              width: 12.w,
            ),

            DoctorInfo(
              doctor: doctor,
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorImage extends StatelessWidget {
  const DoctorImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        width: 110.w,
        height: 120.w,
        fit: BoxFit.contain,
        imageUrl: imageUrl,
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
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key, required this.doctor});

  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name
          Text(
            'Dr. ${doctor.name}',
            style: TextStyles.font18DarkBlueWeightSemiBold,
          ),

          // Specialization
          Text('${doctor.specialization?.name} | ${doctor.degree}'),

          // open close
          Text('${doctor.address} | ${doctor.phone}')
        ],
      ),
    );
  }
}
