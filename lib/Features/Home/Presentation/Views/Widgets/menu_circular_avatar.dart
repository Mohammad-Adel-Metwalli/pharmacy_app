import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class MenuCircularAvatar extends StatefulWidget
{
  const MenuCircularAvatar({
    super.key,
  });

  @override
  State<MenuCircularAvatar> createState() => _MenuCircularAvatarState();
}

class _MenuCircularAvatarState extends State<MenuCircularAvatar>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/Avatar.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return const CircleAvatar(
      radius: 60,
      backgroundColor: ConstantColors.yellowOfGoogle,
      child: CircleAvatar(
        radius: 55,
        child: Image(
            image: AssetImage('Assets/Images/Avatar.png')
        ),
      ),
    );
  }
}