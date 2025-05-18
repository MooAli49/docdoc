import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_bloc_builder.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_see_all_text.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

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
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAllText(),
              verticalSpace(16),
              const DoctorSpecialityBlocBuilder(),
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
