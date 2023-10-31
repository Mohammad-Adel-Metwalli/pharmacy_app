import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharmacy_app/Features/Signup/Presentation/Views/Widgets/confirm_password_text_field.dart';
import '../../../../../Core/Widgets/password_text_field.dart';
import '../../../../../Core/Widgets/username_text_field.dart';

class LoginLink extends StatelessWidget
{
  const LoginLink({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const Text('Already have an account? ', style: TextStyle(fontWeight: FontWeight.bold)),

        InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: ()
            {
              UsernameTextField.usernameController.clear();
              PasswordTextField.passwordController.clear();
              ConfirmPasswordTextField.confirmPasswordController.clear();

              GoRouter.of(context).replace('/');
            },
            child: const Text('Login Now', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
        ),

        const Spacer(),
      ],
    );
  }
}