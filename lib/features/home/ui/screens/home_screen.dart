import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_see_all_text.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAllText(),
              verticalSpace(16),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen:
                    (previous, current) =>
                        current is SpecializationLoading ||
                        current is SpecializationSuccess ||
                        current is SpecializationError,
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationLoading: () => setupLoading(),
                    specializationSuccess: (specializations) {
                      var specializationList =
                          specializations.specializationModelList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpecialityListView(
                              specializationList: specializationList ?? [],
                            ),
                            verticalSpace(8),
                            DoctorsListView(
                              doctorModelList: specializationList?[0].doctors,
                            ),
                          ],
                        ),
                      );
                    },
                    specializationError: (errorHandler) => setupError(),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center setupError() => Center();

  SizedBox setupLoading() {
    return SizedBox(
      height: 100,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
