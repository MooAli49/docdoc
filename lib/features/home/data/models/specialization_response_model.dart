import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializationDataModel>? specializationModelList;
  
  SpecializationResponseModel({this.message, this.specializationModelList});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$SpecializationResponseModelToJson(this);
}
