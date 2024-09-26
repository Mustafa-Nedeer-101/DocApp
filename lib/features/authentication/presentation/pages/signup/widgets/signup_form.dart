import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/helpers/validators.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/core/theming/text_styles.dart';
import 'package:maser_project/core/widgets/text_button.dart';
import 'package:maser_project/core/widgets/text_form_field.dart';
import 'package:maser_project/features/authentication/domain/entities/signup_request_data_entity.dart';
import 'package:maser_project/features/authentication/presentation/bloc/signup/signup_bloc.dart';
import 'package:maser_project/features/authentication/presentation/pages/signup/widgets/password_validations.dart';
import '../../../../../../core/helpers/spacing.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Name
          CustomTextFormField(
            hintText: 'Name',
            controller: nameController,
            validator: (text) =>
                ValidationHelper.validateEmptyText('Name', text),
          ),

          // Space
          SpacingHelper.verticalSpacing(18),

          // Email
          CustomTextFormField(
            hintText: 'Email',
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),

          // Space
          SpacingHelper.verticalSpacing(18),

          // Phone
          CustomTextFormField(
            hintText: 'Phone',
            controller: phoneController,
            validator: ValidationHelper.validatePhoneNumber,
          ),

          // Space
          SpacingHelper.verticalSpacing(18),

          // Password
          CustomTextFormField(
            hintText: 'Password',
            password: true,
            controller: passwordController,
            validator: ValidationHelper.validatePassword,
          ),

          // Password Validations
          PasswordValidations(
            passwordController: passwordController,
          ),

          // Space
          SpacingHelper.verticalSpacing(18),

          // Password Cinfirmation
          CustomTextFormField(
            hintText: 'Password Confirmation',
            password: true,
            controller: passwordConfirmationController,
            validator: (text) {
              if (text != passwordController.text) {
                return 'Password confirmation doesn\'t match';
              }

              return null;
            },
          ),

          // Space
          SpacingHelper.verticalSpacing(40),

          // Signup Button
          CustomTextButton(
            buttonText: 'Create account',
            textStyle: TextStyles.font16WhiteWeightSemiBold,
            onpressed: () {
              if (formKey.currentState!.validate()) {
                // Add Event to bloc
                context.read<SignupBloc>().add(SignupEvent.started(
                    params: SignupParams(
                        data: SignupRequestDataEntity(
                            name: nameController.text,
                            email: emailController.text,
                            phone: phoneController.text,
                            gender: '0',
                            password: passwordController.text,
                            passwordConfirmation:
                                passwordConfirmationController.text))));
              }
            },
          ),
        ],
      ),
    );
  }
}
