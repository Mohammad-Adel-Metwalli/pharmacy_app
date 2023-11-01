import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class MenuButtonItems extends StatelessWidget
{
  const MenuButtonItems({
    super.key,
    required this.path,
    required this.label,
  });

  final String path;
  final String label;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),

        SvgPicture.asset(path),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.002),

        Center(child: Text(label, style: const TextStyle(color: ConstantColors.luxuryBlue, fontWeight: FontWeight.bold))),

        const Spacer()
      ],
    );
  }
}