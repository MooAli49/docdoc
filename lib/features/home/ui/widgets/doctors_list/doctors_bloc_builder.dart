import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorSuccess || current is DoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsList) => setupSuccess(doctorsList),
          doctorError: (errorHandler) => setupError(),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(List<DoctorModel?>? doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setupError() {
    return SizedBox.shrink();
  }
}
