import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharmacy_app/Core/Utils/styles.dart';
import '../../../../../Core/Widgets/eye_icon.dart';
import '../../../../Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import '../../../../../Core/Utils/Functions/all_functions.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ConfirmPasswordTextField extends StatefulWidget
{
  const ConfirmPasswordTextField({super.key, required this.isShowed, this.changeIconState, required this.iconState});
  final bool isShowed;
  final void Function()? changeIconState;
  final AdvancedIconState iconState;
  static TextEditingController confirmPasswordController = TextEditingController();

  @override
  State<ConfirmPasswordTextField> createState() => _ConfirmPasswordTextFieldState();
}

class _ConfirmPasswordTextFieldState extends State<ConfirmPasswordTextField>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.32),
      child: TextFormField(
        validator: (value)
        {
          if(value?.isEmpty ?? true)
          {
            return 'Field is required';
          }
          return null;
        },
        controller: ConfirmPasswordTextField.confirmPasswordController,
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
            label: const Text('confirm password', style: Styles.passwordStyle),
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