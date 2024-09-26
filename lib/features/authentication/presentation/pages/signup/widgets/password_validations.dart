import 'package:flutter/material.dart';
import 'package:maser_project/core/constants/colors.dart';
import 'package:maser_project/core/helpers/regex.dart';
import 'package:maser_project/core/helpers/spacing.dart';
import 'package:maser_project/core/theming/text_styles.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValidationRow(
          text: 'Has at least 1 lower case letter',
          achieveFunction: RegexHelper.hasLowerCase,
          passwordController: passwordController,
        ),
        ValidationRow(
          text: 'Has at least 1 upper case letter',
          achieveFunction: RegexHelper.hasUpperCase,
          passwordController: passwordController,
        ),
        ValidationRow(
          text: 'Has at least 1 special character',
          achieveFunction: RegexHelper.hasSpecialCharacter,
          passwordController: passwordController,
        ),
        ValidationRow(
          text: 'Has at least 1 number',
          achieveFunction: RegexHelper.hasNumber,
          passwordController: passwordController,
        ),
        ValidationRow(
          text: 'at least 8 letters long',
          achieveFunction: RegexHelper.hasMinLength,
          passwordController: passwordController,
        ),
      ],
    );
  }
}

class ValidationRow extends StatefulWidget {
  const ValidationRow(
      {super.key,
      required this.text,
      required this.achieveFunction,
      required this.passwordController});

  final String text;
  final TextEditingController passwordController;
  final bool Function(String pass) achieveFunction;

  @override
  State<ValidationRow> createState() => _ValidationRowState();
}

class _ValidationRowState extends State<ValidationRow> {
  bool achieved = false;
  late VoidCallback listener;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = widget.passwordController;

    listener = () {
      bool newAchieved = widget.achieveFunction(passwordController.text);

      if (newAchieved != achieved) {
        setState(() {
          achieved = newAchieved;
        });
      }
    };

    passwordController.addListener(listener);
  }

  @override
  void dispose() {
    passwordController.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: achieved ? Colors.green : Colors.grey,
        ),

        // Space
        SpacingHelper.horizontalSpacing(6),

        // Text
        Text(
          widget.text,
          style: TextStyles.font13DarkBlueWeightRegular.copyWith(
            color: achieved ? Colors.green : CColors.lightGrey,
            decoration: achieved ? TextDecoration.lineThrough : null,
            decorationColor: achieved ? Colors.green : CColors.lightGrey,
          ),
        )
      ],
    );
  }
}
