import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/constant_colors.dart';
import 'most_sold_medicines.dart';

class MostSoldMedicinesSection extends StatelessWidget
{
  const MostSoldMedicinesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.012),
      child: Ink(
        height: MediaQuery.sizeOf(context).height * 0.4,
        width: MediaQuery.sizeOf(context).width * 0.82,
        decoration: BoxDecoration(color: ConstantColors.customedGrey, borderRadius: BorderRadius.circular(15), border: Border.all(color: ConstantColors.babyPowder, width: 4)),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

            const Text('The most sold medicines', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const MostSoldMedicines()
          ],
        ),
      ),
    );
  }
}