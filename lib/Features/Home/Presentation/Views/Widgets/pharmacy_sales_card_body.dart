import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/pharmacy_sales_card_body_items.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class PharmacySalesCardBody extends StatelessWidget
{
  const PharmacySalesCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      width: MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(color: ConstantColors.offWhite, borderRadius: BorderRadius.circular(15), border: Border.all(color: ConstantColors.night, width: 4)),
      child: const PharmacySalesCardBodyItems(),
    );
  }
}