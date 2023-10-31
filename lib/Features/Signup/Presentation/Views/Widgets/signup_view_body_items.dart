import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/confirm_password_text_field.dart';
import 'package:pharmacy_app/Core/Widgets/farmacia_section.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/login_link.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/signup_button.dart';
import '../../../../../Core/Widgets/password_text_field.dart';
import '../../../../../Core/Widgets/username_text_field.dart';

class SignUpViewBodyItems extends StatefulWidget
{
  const SignUpViewBodyItems({super.key});

  @override
  State<SignUpViewBodyItems> createState() => _SignUpViewBodyItemsState();
}

class _SignUpViewBodyItemsState extends State<SignUpViewBodyItems>
{
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isShowed = true;
  AdvancedIconState iconState = AdvancedIconState.primary;
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

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          PasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          ConfirmPasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          SignUpButton(formKey: formKey),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          const LoginLink(),

          const FarmaciaSection()
        ],
      ),
    );
  }
}