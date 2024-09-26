import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/extensions.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:maser_project/core/theming/text_styles.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/dont_have_account.dart';
import 'package:maser_project/features/authentication/presentation/pages/login/widgets/login_form.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/terms_and_conditions.dart';
import 'package:maser_project/routing/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24PrimaryWeightBold,
              ),

              // Space
              SpacingHelper.verticalSpacing(8),

              // Paragraph
              Text(
                'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                style: TextStyles.font14GreyWeightRegular,
              ),

              // Space
              SpacingHelper.verticalSpacing(36),

              // Form & Listener
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(
                    // Loading
                    loading: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },

                    // Success
                    success: (data) {
                      context.pop();
                      context.pushNamed(Routes.homeScreen);
                    },

                    // Error
                    failure: (error) =>
                        handleErrorState(context, error.errorMessage),
                  );
                },
                child: const LoginForm(),
              ),

              // Space
              SpacingHelper.verticalSpacing(16),

              const TermsAndConditions(),

              // Space
              SpacingHelper.verticalSpacing(60),

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
            style: TextStyles.font14BlueWeightSemiBold,
          ),
        ),
      ],
    ),
  );
}
