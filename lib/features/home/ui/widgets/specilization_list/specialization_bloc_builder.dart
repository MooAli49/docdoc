import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:docdoc/features/home/ui/widgets/specilization_list/speciality_shimmer_loading.dart';
import 'package:docdoc/features/home/ui/widgets/specilization_list/specialization_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationLoading ||
              current is SpecializationSuccess ||
              current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setupLoading(),
          specializationSuccess: (specializationModelList) {
            var specializationList = specializationModelList;
            return setupSuccess(specializationList);
          },
          specializationError: (errorHandler) => setupError(),
          orElse: () => setupError(),
        );
      },
    );
  }

  Widget setupSuccess(List<SpecializationDataModel?>? specializationList) {
    return SpecializationListView(specializationList: specializationList ?? []);
  }

  Widget setupError() => SizedBox.shrink();

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
