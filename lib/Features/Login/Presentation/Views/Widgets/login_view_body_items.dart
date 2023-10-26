import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/password_text_field.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/register_link.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/username_text_field.dart';
import 'farmacia_section.dart';
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

  void changeIconState()
  {
    setState(()
    {
      if(iconState == AdvancedIconState.primary)
      {
        iconState = AdvancedIconState.secondary;
        isShowed = false;
      }

      else
      {
        iconState = AdvancedIconState.primary;
        isShowed = true;
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const UsernameTextField(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        PasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState, textOfLabel: 'password'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        const ForgotPasswordLink(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        const LoginButton(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        const RegisterLink(),

        const FarmaciaSection()
      ],
    );
  }
}