import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'menu_button_items.dart';

class MenuButton extends StatelessWidget
{
  const MenuButton({
    super.key, required this.label, required this.path,
  });
  final String label, path;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: ()
      {

      },
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).width * 0.13,
        decoration: BoxDecoration(color: ConstantColors.babyPowder, borderRadius: BorderRadius.circular(15)),
        child: MenuButtonItems(path: path, label: label),
      ),
    );
  }
}