import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/validators.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/core/common_widgets/text_button.dart';
import 'package:maser_project/core/common_widgets/text_form_field.dart';
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
          verticalSpacing(CSizes.xl),

          // Email
          CustomTextFormField(
            hintText: 'Email',
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),

          // Space
          verticalSpacing(CSizes.xl),

          // Phone
          CustomTextFormField(
            hintText: 'Phone',
            controller: phoneController,
            validator: ValidationHelper.validatePhoneNumber,
          ),

          // Space
          verticalSpacing(CSizes.xl),

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
          verticalSpacing(CSizes.xl),

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
          verticalSpacing(CSizes.xxx),

          // Signup Button
          CustomTextButton(
            buttonText: CTexts.createAccount,
            textStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: CColors.white),
            onpressed: () {
              if (formKey.currentState!.validate()) {
                // Add Event to bloc
                context.read<SignupBloc>().add(UserSignup(
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
