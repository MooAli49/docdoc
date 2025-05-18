import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:docdoc/features/home/logic/home_cubit/home_cubit.dart';
import 'package:docdoc/features/home/ui/widgets/specilization_list/specialization_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationListView extends StatefulWidget {
  const SpecializationListView({super.key, required this.specializationList});
  final List<SpecializationDataModel?>? specializationList;

  @override
  State<SpecializationListView> createState() => _SpecializationListViewState();
}

class _SpecializationListViewState extends State<SpecializationListView> {
  int selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: widget.specializationList?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });
                context.read<HomeCubit>().getDoctorsList(
                  widget.specializationList?[index]?.id,
                );
              },
              child: SpecializationListViewItem(
                itemIndex: index,
                selectedSpecializationIndex: selectedSpecializationIndex,
                specializationDataModel: widget.specializationList?[index],
              ),
            ),
      ),
    );
  }
}
