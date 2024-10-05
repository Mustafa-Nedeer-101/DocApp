import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/dependency_injection/dependency_injection.dart';
import 'package:maser_project/features/authentication/presentation/bloc/redirect/redirect_bloc.dart';
import 'package:maser_project/features/authentication/presentation/bloc/signup/signup_bloc.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/login.dart';
import 'package:maser_project/features/authentication/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:maser_project/features/authentication/presentation/pages/redirect/redirect.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/signup.dart';
import 'package:maser_project/features/doctors/presentaion/bloc/doctors_bloc.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:maser_project/features/doctors/presentaion/pages/recommendation_doctor/recommendation_doctor.dart';
import 'package:maser_project/features/specialities/presentation/bloc/specialities_bloc.dart';
import 'package:maser_project/features/home/pages/home_page.dart';
import 'package:maser_project/features/specialities/presentation/pages/doctor_speciality/doctor_speciality.dart';
import 'package:maser_project/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Will be passed to any screen via the arguments parameter
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // Onboarding
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );

      case Routes.redirectScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => RedirectBloc(),
                  child: const RedirectScreen(),
                ));

      // Login
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginBloc>(),
                  child: const LoginPage(),
                ));

      // Signup
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignupBloc>(),
                  child: const SignupPage(),
                ));

      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (context) => SpecialitiesBloc()),
                    BlocProvider(create: (context) => DoctorsBloc()),
                  ],
                  child: const HomePage(),
                ));

      case Routes.recommendationDoctor:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => DoctorsBloc(),
                  child: const RecommendationDoctorPage(),
                ));

      case Routes.doctorSpeciality:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SpecialitiesBloc(),
                  child: const DoctorSpecialityPage(),
                ));

      default:
        return null;
    }
  }
}
