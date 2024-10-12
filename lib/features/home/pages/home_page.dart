import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/common_widgets/section_header.dart';
import 'package:maser_project/features/doctors/presentaion/bloc/doctors_bloc.dart';
import 'package:maser_project/features/specialities/presentation/bloc/specialities_bloc.dart';
import 'package:maser_project/features/home/widgets/doctors_list/doctors_list_view.dart';
import 'package:maser_project/features/home/widgets/home_app_bar.dart';
import 'package:maser_project/features/home/widgets/home_doctors_banner.dart';
import 'package:maser_project/routing/routes.dart';

import '../widgets/speciality_list/speciality_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Add Event
    context.read<SpecialitiesBloc>().add(GetSpecialitiesEvent());
    context.read<DoctorsBloc>().add(GetDoctorsEvent());
    return Scaffold(
      backgroundColor: CColors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              const HomeAppBar(),

              // Banner
              const HomeDoctorsBanner(),

              // Space
              const SizedBox(
                height: 24,
              ),

              // Section Header
              CustomSectionHeader(
                header: 'Dcotor Speciality',
                viewSeeAll: true,
                action: () => context.pushNamed(Routes.doctorSpeciality),
              ),

              // Space
              const SizedBox(
                height: 18,
              ),

              // Doctor Speciality List
              BlocBuilder<SpecialitiesBloc, SpecialitiesState>(
                builder: (context, state) {
                  switch (state) {
                    case SpecialitiesLoadingState():
                      return const Center(
                        child: CircularProgressIndicator(),
                      );

                    case SpecialitiesSuccessState():
                      final specialitiesList = state.data;

                      return DoctorSpecialityList(
                        specialities: specialitiesList,
                      );
                    case SpecialitiesFailureState():
                      return Center(
                        child: Text(state.error.message),
                      );
                  }
                },
              ),

              // Section Header
              CustomSectionHeader(
                header: 'Recommendation Doctor',
                viewSeeAll: true,
                action: () => context.pushNamed(Routes.recommendationDoctor),
              ),

              // Space
              const SizedBox(
                height: 16,
              ),

              // Doctors ListView
              BlocBuilder<DoctorsBloc, DoctorsState>(
                builder: (context, state) {
                  switch (state) {
                    case DoctorsLoadingState():
                      return const Center(
                        child: CircularProgressIndicator(),
                      );

                    case DoctorsSuccessState():
                      final doctorsList = state.data;

                      return DoctorsListView(
                        doctors: doctorsList,
                      );
                    case DoctorsFailureState():
                      return Center(
                        child: Text(state.error.message),
                      );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
