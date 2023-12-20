import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_app/Features/Medicines/Presentation/Manager/Medicines_Cubit/medicines_cubit.dart';
import 'drugs_list_item.dart';

class DrugsList extends StatelessWidget
{
  const DrugsList({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<MedicinesCubit, MedicinesState>(
      builder: (context, state)
      {
        List<dynamic> theDrugsList = BlocProvider.of<MedicinesCubit>(context).listOfDDrugs?? [];
        List<dynamic> theDrugsListValues = BlocProvider.of<MedicinesCubit>(context).listOfDrugsValues?? [];

        return Expanded(
          child: ListView.builder(
            itemCount: BlocProvider.of<MedicinesCubit>(context).listOfDDrugs?.length ?? 0,
            itemBuilder: (context, index) => DrugsListItem(index: index, drug: theDrugsList.reversed.toList(), drugValues: theDrugsListValues.reversed.toList()),
          ),
        );
      },
    );
  }
}