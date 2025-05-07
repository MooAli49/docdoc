import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:docdoc/core/widgets/app_custom_button.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_an_account_text.dart';
import 'package:docdoc/features/login/ui/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueW700),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GreyW400,
                ),
                verticalSpace(36),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),

                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),
                      ),
                      verticalSpace(8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueW400,
                        ),
                      ),
                      verticalSpace(24),
                      AppCustomButton(text: 'Login', onPressed: () {}),
                      verticalSpace(16),
                      TermsAndConditionsText(),
                      verticalSpace(60),
                      AlreadyHaveAnAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
