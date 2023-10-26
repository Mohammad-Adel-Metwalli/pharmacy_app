import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              GoRouter.of(context).replace('/signUp');
            },
            child: const Text('Register Now', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
        ),

        const Spacer(),
      ],
    );
  }
}