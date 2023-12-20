import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'header_section_buttons.dart';

class HeaderSection extends StatelessWidget
{
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        const Text('Available Drugs', style: TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.night, fontSize: 25)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.66),

        const HeaderSectionButtons(label: 'Add Drug'),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const HeaderSectionButtons(label: 'Edit Drug'),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
      ],
    );
  }
}