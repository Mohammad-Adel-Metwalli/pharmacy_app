import 'package:flutter/material.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/login_view_body_items.dart';
import 'package:pharmacy_app/Features/Login/Presentation/Views/Widgets/rive_authentication_animation.dart';

class LoginViewBody extends StatefulWidget
{
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Stack(
        children: [
          const RiveAuthenticationAnimation(),

          Padding(
            padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.45),
            child: const LoginViewBodyItems(),
          )
        ],
      ),
    );
  }
}