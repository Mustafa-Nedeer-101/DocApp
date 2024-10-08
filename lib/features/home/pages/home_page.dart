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
    context.read<SpecialitiesBloc>().add(const SpecialitiesEvent.started());
    context.read<DoctorsBloc>().add(const DoctorsEvent.started());
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
                  return state.maybeWhen(loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }, success: (data) {
                    final specialitiesList = data;

                    return DoctorSpecialityList(
                      specialities: specialitiesList,
                    );
                  }, failure: (error) {
                    return Center(
                      child: Text(error.message),
                    );
                  }, orElse: () {
                    return const Center(
                      child: Text('Error!!'),
                    );
                  });
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
                  return state.maybeWhen(loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }, success: (data) {
                    final doctorsList = data;

                    return DoctorsListView(
                      doctors: doctorsList,
                    );
                  }, failure: (error) {
                    return Center(
                      child: Text(error.message),
                    );
                  }, orElse: () {
                    return const Center(
                      child: Text('Error!!'),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
