import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:pharmacy_app/Core/Utils/constants.dart';
part 'medicines_state.dart';

class MedicinesCubit extends Cubit<MedicinesState>
{
  MedicinesCubit() : super(MedicinesInitial());

  List<dynamic>? listOfDDrugs;
  List<dynamic>? listOfDrugsValues;

  loadMedicines() async
  {
    var drugBox = Hive.box(drugsBox);
    listOfDDrugs = drugBox.keys.toList();
    listOfDrugsValues = drugBox.values.toList();

    emit(MedicinesSuccess());
  }
}