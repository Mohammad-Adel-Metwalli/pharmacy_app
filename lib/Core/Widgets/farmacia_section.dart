import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Utils/constant_colors.dart';

class FarmaciaSection extends StatelessWidget
{
  const FarmaciaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        Lottie.asset(
            'Assets/Animations/Animation - 1698096111246.json',
            height: MediaQuery.sizeOf(context).height <= 682.4 ? MediaQuery.sizeOf(context).height * 0.1 : MediaQuery.sizeOf(context).height * 0.12
        ),

        const Text('Farmacia Del Futuro', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: ConstantColors.coralOrange)),

        const Spacer(),
      ],
    );
  }
}