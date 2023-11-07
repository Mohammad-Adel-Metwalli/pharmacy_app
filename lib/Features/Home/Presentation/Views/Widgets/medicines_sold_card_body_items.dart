import 'package:flutter/material.dart';
import 'custom_animated_digit_widget.dart';

class MedicinesSoldCardBodyItems extends StatelessWidget
{
  const MedicinesSoldCardBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.055, top: MediaQuery.sizeOf(context).height * 0.01),
          child: const Text('Medicines sold', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const CustomAnimatedDigitWidget(value: 5500, suffix: ' Medicine', isThereFraction: false)
      ],
    );
  }
}