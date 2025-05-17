import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_data_model.g.dart';

@JsonSerializable()
class SpecializationDataModel {
  int? id;
  String? name;
  List<DoctorModel>? doctors;
  SpecializationDataModel({this.id, this.name, this.doctors});

  factory SpecializationDataModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataModelFromJson(json);
      
  Map<String, dynamic> toJson() => _$SpecializationDataModelToJson(this);
}
