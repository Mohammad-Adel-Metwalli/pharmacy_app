import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              GoRouter.of(context).replace('/');
            },
            child: const Text('Login Now', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
        ),

        const Spacer(),
      ],
    );
  }
}