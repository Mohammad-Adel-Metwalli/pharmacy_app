import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EyeIcon extends StatelessWidget
{
  const EyeIcon({
    super.key,
    required this.iconState,
  });

  final AdvancedIconState iconState;

  @override
  Widget build(BuildContext context)
  {
    return AdvancedIcon(
      icon: FontAwesomeIcons.eye,
      secondaryIcon: FontAwesomeIcons.eyeSlash,
      state: iconState,
    );
  }
}