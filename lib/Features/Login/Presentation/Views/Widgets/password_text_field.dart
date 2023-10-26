import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import '../../../../../Core/Utils/Functions/all_functions.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'eye_icon.dart';

class PasswordTextField extends StatefulWidget
{
  const PasswordTextField({super.key, required this.isShowed, required this.changeIconState, required this.iconState, required this.textOfLabel});
  final bool isShowed;
  final void Function()? changeIconState;
  final AdvancedIconState iconState;
  final String textOfLabel;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField>
{
  @override
  Widget build(BuildContext context)

  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.32),
      child: TextFormField(
        obscureText: widget.isShowed,
        obscuringCharacter: '*',
        onFieldSubmitted: (value) => RiveAuthenticationAnimation.isHandsUp!.change(false),
        onTap: () => RiveAuthenticationAnimation.isHandsUp!.change(true),
        onTapOutside: (event)
        {
          FocusManager.instance.primaryFocus?.unfocus();
          RiveAuthenticationAnimation.isHandsUp!.change(false);
        },

        cursorColor: ConstantColors.coralOrange,
        style: const TextStyle(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            label: Text(widget.textOfLabel, style: const TextStyle(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold)),
            prefixIcon: const Icon(FontAwesomeIcons.lock, color: ConstantColors.coralOrange),
            focusColor: ConstantColors.coralOrange,
            errorBorder: AllFunctions.buildOutlineInputBorder(),
            enabledBorder: AllFunctions.buildOutlineInputBorder(),
            focusedErrorBorder: AllFunctions.buildOutlineInputBorder(),
            focusedBorder: AllFunctions.buildOutlineInputBorder(),

            suffix: GestureDetector(
              onTap: widget.changeIconState,
              child: EyeIcon(iconState: widget.iconState),
            )
        ),
      ),
    );
  }
}
