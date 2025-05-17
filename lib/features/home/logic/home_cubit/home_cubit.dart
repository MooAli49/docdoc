import 'dart:math';

import 'package:docdoc/features/home/data/repos/home_repo.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  final HomeRepo _homeRepo;

  void getSpecialization() async{
    emit(const HomeState.specializationLoading());
      var response =await _homeRepo.getSpecialization();
    response.when(
      success: (specializationResponseModel) {
        emit(HomeState.specializationSuccess(specializationResponseModel));
      },
      failure: (error) {
        emit(HomeState.specializationError(error));
      },
    );
   
    


  }
}
