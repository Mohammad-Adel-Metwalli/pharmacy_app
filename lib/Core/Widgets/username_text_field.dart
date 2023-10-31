import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharmacy_app/Core/Utils/styles.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import '../Utils/Functions/all_functions.dart';
import '../Utils/constant_colors.dart';

class UsernameTextField extends StatefulWidget
{
  const UsernameTextField({
    super.key,
  });
  static TextEditingController usernameController = TextEditingController();

  @override
  State<UsernameTextField> createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField>
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
        controller: UsernameTextField.usernameController,
        onFieldSubmitted: (value) => RiveAuthenticationAnimation.isChecking!.change(false),
        onTap: () => RiveAuthenticationAnimation.isChecking!.change(true),
        onTapOutside: (event)
        {
          FocusManager.instance.primaryFocus?.unfocus();
          RiveAuthenticationAnimation.isChecking!.change(false);
        },
        cursorColor: ConstantColors.coralOrange,
        style: const TextStyle(color: ConstantColors.coralOrange, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          label: const Text('username', style: Styles.usernameStyle),
          prefixIcon: const Icon(FontAwesomeIcons.userTie, color: ConstantColors.coralOrange),
          focusColor: ConstantColors.coralOrange,
          errorBorder: AllFunctions.buildOutlineInputBorder(),
          enabledBorder: AllFunctions.buildOutlineInputBorder(),
          focusedErrorBorder: AllFunctions.buildOutlineInputBorder(),
          focusedBorder: AllFunctions.buildOutlineInputBorder(),
        ),
      ),
    );
  }
}