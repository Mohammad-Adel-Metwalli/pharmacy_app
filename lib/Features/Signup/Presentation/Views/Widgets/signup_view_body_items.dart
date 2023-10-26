import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/farmacia_section.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/login_link.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/signup_button.dart';
import '../../../../Login/Presentation/Views/Widgets/password_text_field.dart';
import '../../../../Login/Presentation/Views/Widgets/username_text_field.dart';

class SignUpViewBodyItems extends StatefulWidget
{
  const SignUpViewBodyItems({super.key});

  @override
  State<SignUpViewBodyItems> createState() => _SignUpViewBodyItemsState();
}

class _SignUpViewBodyItemsState extends State<SignUpViewBodyItems>
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

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        PasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState, textOfLabel: 'password'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        PasswordTextField(isShowed: isShowed, changeIconState: changeIconState, iconState: iconState, textOfLabel: 'confirm password'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        const SignUpButton(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        const LoginLink(),

        const FarmaciaSection()
      ],
    );
  }
}
