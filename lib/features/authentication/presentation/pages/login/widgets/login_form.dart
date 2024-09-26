import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maser_project/core/helpers/validators.dart';
import 'package:maser_project/core/params/params.dart';
import 'package:maser_project/features/authentication/domain/entities/login_request_data_entity.dart';
import 'package:maser_project/features/authentication/presentation/bloc/login/login_bloc.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field.dart';

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
            hintText: 'Email',
            controller: emailController,
            validator: ValidationHelper.validateEmail,
          ),

          // Space
          SpacingHelper.verticalSpacing(18),

          // Password
          CustomTextFormField(
            hintText: 'Password',
            controller: passwordController,
            validator: (pass) =>
                ValidationHelper.validateEmptyText('Password', pass),
            password: true,
          ),

          // ForgotPassword
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot Password',
              style: TextStyles.font13PrimaryWeightRegular,
            ),
          ),

          // Space
          SpacingHelper.verticalSpacing(40),

          // Login Button
          CustomTextButton(
            buttonText: 'Login',
            textStyle: TextStyles.font16WhiteWeightSemiBold,
            onpressed: () {
              if (formKey.currentState!.validate()) {
                // Add Event to Bloc
                context.read<LoginBloc>().add(LoginEvent.started(LoginParams(
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
