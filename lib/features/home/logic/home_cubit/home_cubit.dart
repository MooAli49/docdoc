import 'package:docdoc/core/helper/extensions.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;

  List<SpecializationDataModel?>? specializationDataList = [];

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    var response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationResponseModel) {
        specializationDataList =
            specializationResponseModel.specializationModelList ?? [];

        getDoctorsList(specializationDataList?.first?.id);
        emit(HomeState.specializationSuccess(specializationDataList));
      },
      failure: (error) {
        emit(HomeState.specializationError(error));
      },
    );
  }

  void getDoctorsList(int? specializationId) {
    List<DoctorModel?>? doctorsList = getDoctorsListBySpecializationListById(
      specializationId ?? 1,
    );
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsList));
    } else {
      emit(HomeState.doctorError(ErrorHandler.handle('No doctor found')));
    }
  }

  /// return List of Doctors based on specialization id
  List<DoctorModel?>? getDoctorsListBySpecializationListById(
    int specializationId,
  ) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctors;
  }
}
