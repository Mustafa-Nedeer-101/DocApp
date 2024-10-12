import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/common_widgets/app_bar.dart';
import 'package:maser_project/core/common_widgets/speciality_icon_text.dart';
import 'package:maser_project/features/specialities/domain/entities/speciality_entity.dart';
import 'package:maser_project/features/specialities/presentation/bloc/specialities_bloc.dart';

class DoctorSpecialityPage extends StatelessWidget {
  const DoctorSpecialityPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Add Event
    context.read<SpecialitiesBloc>().add(GetSpecialitiesEvent());

    return Scaffold(
      appBar: const CustomAppBar(title: 'Doctor Speciality'),
      body: BlocBuilder<SpecialitiesBloc, SpecialitiesState>(
        builder: (context, state) {
          switch (state) {
            case SpecialitiesLoadingState():
              return const Center(
                child: CircularProgressIndicator(),
              );

            case SpecialitiesSuccessState():
              return SuccessScreen(
                specialities: state.data,
              );
            case SpecialitiesFailureState():
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
  const SuccessScreen({
    super.key,
    required this.specialities,
  });

  final List<SpecialityEntity> specialities;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        int count = 2;

        if (width > 600) {
          count = 3;
        }

        return GridView.builder(
          itemCount: specialities.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count),
          itemBuilder: (context, index) {
            return CustomDoctorSpecialityIconText(
              imageUrl: 'assets/images/speciality/general_doctor.png',
              speciality: specialities[index].name ?? 'General',
            );
          },
        );
      },
    );
  }
}
