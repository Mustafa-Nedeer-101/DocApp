import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:maser_project/core/theme/text_styles.dart';
import 'package:maser_project/features/authentication/presentation/bloc/signup/signup_bloc.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/already_have_account.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/signup_form.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/signup_header.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/terms_and_conditions.dart';
import 'package:maser_project/routing/routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              const SignupHeader(),

              // Space
              verticalSpacing(CSizes.spaceBtwSections),

              // Form & Listener
              BlocListener<SignupBloc, SignupState>(
                listener: (context, state) {
                  switch (state) {
                    // Loading
                    case SignupLoadingState():
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );

                    // Success
                    case SignupSuccessState():
                      context.pop();
                      context.pushReplacementNamed(Routes.homeScreen);

                    // Error
                    case SignupFailureState():
                      handleErrorState(context, state.error.message);

                    case SignupInitialState():
                      null;
                  }
                },
                child: const SignupForm(),
              ),

              // Space
              const SizedBox(height: CSizes.spaceBtwSections),

              const TermsAndConditions(),

              // Space
              const SizedBox(height: CSizes.spaceBtwSections),

              const AlreadyHaveAccount(),
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
            style: TextStyles.font14BlueWeightSemiBold,
          ),
        ),
      ],
    ),
  );
}
