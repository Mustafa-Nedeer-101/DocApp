import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/common_widgets/app_bar.dart';
import 'package:maser_project/core/common_widgets/doctor_card.dart';
import 'package:maser_project/features/doctors/domain/entities/doctor_entity.dart';
import 'package:maser_project/features/doctors/presentaion/bloc/doctors_bloc.dart';
import 'package:maser_project/features/doctors/presentaion/pages/recommendation_doctor/widgets/search.dart';

class RecommendationDoctorPage extends StatelessWidget {
  const RecommendationDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DoctorsBloc>().add(GetDoctorsEvent());

    return Scaffold(
      backgroundColor: CColors.white,
      appBar: const CustomAppBar(title: 'Doctor Recommendation'),
      body: BlocBuilder<DoctorsBloc, DoctorsState>(
        builder: (context, state) {
          switch (state) {
            case DoctorsLoadingState():
              return const Center(
                child: CircularProgressIndicator(),
              );

            case DoctorsSuccessState():
              final data = state.data;

              return SuccessScreen(
                doctors: data,
              );
            case DoctorsFailureState():
              return Center(
                child: Text(state.error.message),
              );
          }
        },
      ),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  final List<DoctorEntity> doctors;

  const SuccessScreen({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
      child: Column(
        children: [
          // Search
          SearchRow(),

          // Space
          const SizedBox(
            height: 16,
          ),

          // List
          Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return CustomDoctorCard(
                  doctor: doctors[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
