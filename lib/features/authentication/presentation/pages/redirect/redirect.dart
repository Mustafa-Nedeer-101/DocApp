import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/features/authentication/presentation/bloc/redirect/redirect_bloc.dart';
import 'package:maser_project/routing/routes.dart';

class RedirectScreen extends StatelessWidget {
  const RedirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RedirectBloc, RedirectState>(
      listener: (context, state) {
        switch (state) {
          case RedirectInitialState():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          case RedirectAuthenticatedState():
            context.pushReplacementNamed(Routes.homeScreen);
          case RedirectUnauthenticatedState():
            context.pushReplacementNamed(Routes.onboardingScreen);
        }
      },
      child: const ChildWidget(),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Add Event
    context.read<RedirectBloc>().add(StartRedirectEvent());

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
