import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/Core/Widgets/password_text_field.dart';
import 'package:pharmacy_app/Core/Widgets/username_text_field.dart';

class RegisterLink extends StatelessWidget
{
  const RegisterLink({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const Text('Don\'t have an account? ', style: TextStyle(fontWeight: FontWeight.bold)),

        InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: ()
            {
              UsernameTextField.usernameController.clear();
              PasswordTextField.passwordController.clear();

              GoRouter.of(context).replace('/signUp');
            },
            child: const Text('Register Now', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
        ),

        const Spacer(),
      ],
    );
  }
}