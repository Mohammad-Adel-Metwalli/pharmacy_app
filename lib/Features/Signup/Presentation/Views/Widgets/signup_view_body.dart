import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/signup_view_body_items.dart';
import '../../../../Login/Presentation/Views/Widgets/rive_authentication_animation.dart';

class SignUpViewBody extends StatelessWidget
{
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const RiveAuthenticationAnimation(),

        Padding(
          padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.45),
          child: const SignUpViewBodyItems(),
        ),
      ],
    );
  }
}