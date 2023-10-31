import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Widgets/password_text_field.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/register_link.dart';
import 'package:pharmacy_app/Core/Widgets/username_text_field.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import '../../../../../Core/Widgets/farmacia_section.dart';
import 'forgot_password_link.dart';
import 'login_button.dart';

class LoginViewBodyItems extends StatefulWidget
{
  const LoginViewBodyItems({super.key});

  @override
  State<LoginViewBodyItems> createState() => _LoginViewBodyItemsState();
}

class _LoginViewBodyItemsState extends State<LoginViewBodyItems>
{
  bool isShowed = true;
  AdvancedIconState iconState = AdvancedIconState.primary;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void changeIconState()
  {
    setState(()
    {
      if(iconState == AdvancedIconState.primary)
      {
        iconState = AdvancedIconState.secondary;
        isShowed = false;
        RiveAuthenticationAnimation.isHandsUp?.change(true);
      }

      else
      {
        iconState = AdvancedIconState.primary;
        isShowed = true;
        RiveAuthenticationAnimation.isHandsUp?.change(false);
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const UsernameTextField(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          PasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          const ForgotPasswordLink(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          LoginButton(formKey: formKey),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.07),

          const RegisterLink(),

          const FarmaciaSection()
        ],
      ),
    );
  }
}