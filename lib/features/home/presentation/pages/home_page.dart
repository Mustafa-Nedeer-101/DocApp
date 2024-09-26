import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/widgets/section_header.dart';
import 'package:maser_project/features/home/presentation/widgets/doctors_list/doctors_list_view.dart';
import 'package:maser_project/features/home/presentation/widgets/home_app_bar.dart';
import 'package:maser_project/features/home/presentation/widgets/home_doctors_banner.dart';

import '../widgets/speciality_list/speciality_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              HomeAppBar(),

              // Banner
              HomeDoctorsBanner(),

              SizedBox(
                height: 24,
              ),

              // Section Header
              CustomSectionHeader(
                  header: 'Dcotor Speciality', viewSeeAll: true),

              // Space
              SizedBox(
                height: 18,
              ),

              // Doctor Speciality List
              DoctorSpecialityList(
                imagesUrl: [
                  'assets/images/speciality/general_doctor.png',
                  'assets/images/speciality/brain.png',
                  'assets/images/speciality/baby.png',
                  'assets/images/speciality/kidneys.png',
                ],
                specialities: [
                  'General',
                  'Neurologic',
                  'Pediatric',
                  'Radiology'
                ],
              ),

              // Section Header
              CustomSectionHeader(
                  header: 'Recommendation Doctor', viewSeeAll: true),

              // Space
              SizedBox(
                height: 16,
              ),

              // Doctors ListView
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
