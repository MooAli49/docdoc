import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/repository/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginRepo}) : super(LoginState.initial());

  final LoginRepo loginRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    emit(LoginState.loading());

    var response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginRequest) {
        emit(LoginState.success(loginRequest));
      },
      failure: (errorHandle) {
        emit(LoginState.error(errorHandle.apiErrorModel.message ?? ''));
      },
    );
  }
}
