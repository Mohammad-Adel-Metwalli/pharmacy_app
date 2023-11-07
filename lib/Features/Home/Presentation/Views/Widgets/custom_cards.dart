import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/patients_card.dart';
import 'package:pharmacy_app/Features/Home/Presentation/Views/Widgets/pharmacy_sales_card.dart';
import 'medicines_sold_card.dart';

class CustomCards extends StatelessWidget
{
  const CustomCards({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const PharmacySalesCard(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const MedicinesSoldCard(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const PatientsCard(),
      ],
    );
  }
}