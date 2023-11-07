import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/constants.dart';
import 'menu_section_body.dart';

class MenuSection extends StatelessWidget
{
  const MenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Ink(
      height: double.infinity,
      width: MediaQuery.sizeOf(context).width * 0.15,
      decoration: const BoxDecoration(
          color: ConstantColors.luxuryBlue,
          borderRadius: BorderRadius.only(topRight: cornersOfMenu, bottomRight: cornersOfMenu)
      ),

      child: const MenuSectionBody(),
    );
  }
}