import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/constants/sizes.dart';
import 'package:maser_project/core/constants/texts.dart';
import 'package:maser_project/core/helpers/validators.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/domain/entities/login_request_data_entity.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/common_widgets/text_button.dart';
import '../../../../../../core/common_widgets/text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Email
          CustomTextFormField(
            hintText: CTexts.email,
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),

          // Space
          verticalSpacing(CSizes.xl),

          // Password
          CustomTextFormField(
            hintText: CTexts.password,
            controller: passwordController,
            validator: (pass) =>
                ValidationHelper.validateEmptyText(CTexts.password, pass),
            password: true,
          ),

          // Space
          verticalSpacing(CSizes.defaultSpace),

          // ForgotPassword
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              CTexts.forgotPassword,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          // Space
          verticalSpacing(CSizes.xxx),

          // Login Button
          CustomTextButton(
            buttonText: CTexts.login,
            textStyle: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: CColors.white),
            onpressed: () {
              if (formKey.currentState!.validate()) {
                // Add Event to Bloc
                context.read<LoginBloc>().add(UserLogin(
                    params: LoginParams(
                        data: LoginRequestDataEntity(
                            password: passwordController.text,
                            email: emailController.text))));
              }
            },
          ),
        ],
      ),
    );
  }
}
