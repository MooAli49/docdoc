import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? data;
  final bool? status;
  final int? code;

  SignUpResponse({this.message, this.data, this.status, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
