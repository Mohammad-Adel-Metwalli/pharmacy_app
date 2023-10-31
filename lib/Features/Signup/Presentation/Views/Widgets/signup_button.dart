import 'package:flutter/material.dart';
import 'package:pharmacy_app/Core/Utils/Functions/all_functions.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Login/Presentation/Views/Widgets/rive_authentication_animation.dart';

class SignUpButton extends StatelessWidget
{
  const SignUpButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: ()
      {
        if(formKey.currentState!.validate())
        {
          AllFunctions.signupUser(context);
        }

        else
        {
          RiveAuthenticationAnimation.trigFail?.change(true);
        }
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
