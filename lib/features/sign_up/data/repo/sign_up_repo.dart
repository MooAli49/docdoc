import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_response.dart';

class SignUpRepo {
  ApiService apiService;
  SignUpRepo({required this.apiService});

  Future<ApiResult<SignUpResponse>> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await apiService.signUp(signUpRequestBody);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
