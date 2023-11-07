import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CopyRightsSection extends StatelessWidget
{
  const CopyRightsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const Text('Fabuluso Amigos❤️', style: TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold)),

        const Icon(Icons.copyright_sharp, color: ConstantColors.babyPowder),

        Text(DateTime.now().year.toString(), style: const TextStyle(color: ConstantColors.babyPowder, fontWeight: FontWeight.bold)),

        const Spacer(),
      ],
    );
  }
}