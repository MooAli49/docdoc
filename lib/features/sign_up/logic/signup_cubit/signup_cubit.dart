import 'package:docdoc/features/sign_up/data/models/signup_request_body.dart';
import 'package:docdoc/features/sign_up/data/repo/signup_repo.dart';
import 'package:docdoc/features/sign_up/logic/signup_cubit/signup_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(SignupState.initial());

  final SignupRepo _signupRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    emit(SignupState.loading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        address: addressController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) => emit(SignupState.success(data)),
      failure:
          (error) => emit(SignupState.error(error.apiErrorModel.message ?? '')),
    );
  }
}
