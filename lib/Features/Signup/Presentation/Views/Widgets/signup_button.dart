import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SignUpButton extends StatelessWidget
{
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: ()
      {
      },
      child: Ink(
        height: MediaQuery.sizeOf(context).height * 0.07,
        width: MediaQuery.sizeOf(context).width * 0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: ConstantColors.coralOrange),
        child: const Center(child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold, color: ConstantColors.babyPowder, fontSize: 20))),
      ),
    );
  }
}
