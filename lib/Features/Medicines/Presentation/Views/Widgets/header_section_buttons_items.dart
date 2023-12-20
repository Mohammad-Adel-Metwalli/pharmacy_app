import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class HeaderSectionButtonsItems extends StatelessWidget
{
  const HeaderSectionButtonsItems({
    super.key, required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        children: [
          const Spacer(),

          Icon(label == 'Add Drug'? Icons.add_circle_rounded : Icons.edit_note_rounded, color: ConstantColors.luxuryBlue),

          SizedBox(width: MediaQuery.sizeOf(context).width * 0.001),

          Text(label, style: const TextStyle(color: ConstantColors.night, fontWeight: FontWeight.bold)),

          const Spacer(),
        ],
      ),
    );
  }
}