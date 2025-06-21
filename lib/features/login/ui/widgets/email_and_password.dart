import 'package:docdoc/core/helper/app_regex.dart';
import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passwordController;
  bool isObscureText = true;
  bool hasUpperCase = false;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasUpperCase = AppRegex.hasUpperCase(password);
        hasLowerCase = AppRegex.hasLowerCase(password);
        hasNumber = AppRegex.hasNumber(password);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(password);
        hasMinLength = AppRegex.hasMinLength(password);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter valid email';
              }
            },
          ),

          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
            ),
            validator: (value) {},
          ),
          verticalSpace(24),
          PasswordValidation(
            hasUpperCase: hasUpperCase,
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
