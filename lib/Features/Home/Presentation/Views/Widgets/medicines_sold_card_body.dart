import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'medicines_sold_card_body_items.dart';

class MedicinesSoldCardBody extends StatelessWidget
{
  const MedicinesSoldCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      width: MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(color: ConstantColors.customedGrey, borderRadius: BorderRadius.circular(15), border: Border.all(color: ConstantColors.babyPowder, width: 4)),
      child: const MedicinesSoldCardBodyItems(),
    );
  }
}