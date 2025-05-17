import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_list_view.dart';
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
              HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialitySeeAllText(),
              verticalSpace(10),
              DoctorSpecialityListView(),
            ],
          ),
        ),
      ),
    );
  }
}
