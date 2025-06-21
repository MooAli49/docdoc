import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //Specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(List<SpecializationDataModel?>? specializationDataList) = SpecializationSuccess;
  const factory HomeState.specializationError(ErrorHandler errorHandler) = SpecializationError;

  //Doctor
  const factory HomeState.doctorSuccess(List<DoctorModel?>? doctorsList )= DoctorSuccess;
  const factory HomeState.doctorError(ErrorHandler errorHandler) = DoctorError;

}
