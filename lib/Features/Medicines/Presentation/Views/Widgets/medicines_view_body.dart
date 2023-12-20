import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import 'drugs_list.dart';
import 'header_section.dart';

class MedicinesViewBody extends StatelessWidget
{
  const MedicinesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Padding(
            padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.8),
            child: const Text('The way you\'ll find all drugs', style: TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.night, fontSize: 15)),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          const HeaderSection(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          const DrugsList(),
        ],
      ),
    );
  }
}