import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        switch (label)
        {
          case 'Dashboard':
            GoRouter.of(context).replace('/homeView');
            break;

          case 'Medicines':
            GoRouter.of(context).push('/medicinesView');
            break;

          case 'Suppliers':
            GoRouter.of(context).push('/suppliersView');
            break;

          case 'Accounts':
            GoRouter.of(context).push('/accountsView');
            break;

          case 'Logout':
            GoRouter.of(context).replace('/');
            break;
        }
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