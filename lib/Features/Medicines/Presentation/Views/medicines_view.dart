import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import '../Manager/Medicines_Cubit/medicines_cubit.dart';
import 'Widgets/medicines_view_body.dart';

class MedicinesView extends StatefulWidget
{
  const MedicinesView({super.key});

  @override
  State<MedicinesView> createState() => _MedicinesViewState();
}

class _MedicinesViewState extends State<MedicinesView>
{
  @override
  void initState()
  {
    BlocProvider.of<MedicinesCubit>(context).loadMedicines();
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: ConstantColors.babyBlue,
      appBar: AppBar(
        title: const Text('Medicines', style: TextStyle(color: ConstantColors.babyPowder, fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: ConstantColors.luxuryBlue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: ConstantColors.babyPowder),
          onPressed: () => GoRouter.of(context).pop(),
        ),
      ),

      body: const MedicinesViewBody(),
    );
  }
}