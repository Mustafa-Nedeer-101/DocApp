import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/spacing_styles.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/theme/text_styles.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/dont_have_account.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/login_form.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/login_header.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/terms_and_conditions.dart';
import 'package:maser_project/routing/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: CSpacingStyles.paddingWithAppBarHeight,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              const LoginHeader(),

              // Space
              const SizedBox(height: CSizes.spaceBtwSections),

              // Form & Listener
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  switch (state) {
                    case LoginLoadingState():
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    case LoginFailureState():
                      return handleErrorState(context, state.error.message);

                    case LoginSuccessState():
                      context.pop();
                      context.pushReplacementNamed(Routes.homeScreen);

                    case LoginInitialState():
                      null;
                  }
                },
                child: const LoginForm(),
              ),

              // Space
              const SizedBox(height: CSizes.spaceBtwSections),

              const TermsAndConditions(),

              // Space
              const SizedBox(height: CSizes.spaceBtwSections),

              const DontHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}

// Handle Error State
void handleErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        size: 32,
      ),
      iconColor: CColors.error,
      content: Text(
        error,
        style: TextStyles.font15DarkBlueWeightMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: CColors.primaryColor),
          ),
        ),
      ],
    ),
  );
}
