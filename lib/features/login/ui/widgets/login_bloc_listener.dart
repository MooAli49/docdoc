import 'package:docdoc/core/helper/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theme/colors_manager.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Success || current is Error || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  content: SizedBox(
                    height: 200.h,
                    width: 200.w,
                    child: Center(
                      child: const CircularProgressIndicator(
                        color: ColorsManager.mainBlue,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          success: (loginRequest) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  icon: Icon(
                    Icons.error,
                    color: ColorsManager.errorColor,
                    size: 32,
                  ),
                  content: Text(error, style: TextStyles.font15DarkBlueW500),
                  actions: [
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text('OK', style: TextStyles.font14BlueW600),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
