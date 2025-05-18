// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationDataModel _$SpecializationDataModelFromJson(
  Map<String, dynamic> json,
) => SpecializationDataModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  doctors:
      (json['doctors'] as List<dynamic>?)
          ?.map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SpecializationDataModelToJson(
  SpecializationDataModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};
