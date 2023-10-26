import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAuthenticationAnimation extends StatefulWidget
{
  const RiveAuthenticationAnimation({super.key});
  static SMIInput<bool>? isChecking;
  static SMIInput<bool>? isHandsUp;
  static SMIInput<bool>? trigSuccess;
  static SMIInput<bool>? trigFail;
  static StateMachineController? stateMachineController;

  @override
  State<RiveAuthenticationAnimation> createState() => _RiveAuthenticationAnimationState();
}

class _RiveAuthenticationAnimationState extends State<RiveAuthenticationAnimation>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.55),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: double.infinity,
        child: RiveAnimation.asset(
          'Assets/Animations/2244-7248-animated-login-character (1).riv',
          stateMachines: const ['Login Machine'],
          onInit: (artBoard)
          {
            RiveAuthenticationAnimation.stateMachineController = StateMachineController.fromArtboard(artBoard, 'Login Machine');
            if(RiveAuthenticationAnimation.stateMachineController == null) return;

            artBoard.addController(RiveAuthenticationAnimation.stateMachineController!);
            RiveAuthenticationAnimation.isChecking = RiveAuthenticationAnimation.stateMachineController?.findInput('isChecking');
            RiveAuthenticationAnimation.isHandsUp = RiveAuthenticationAnimation.stateMachineController?.findInput('isHandsUp');
            RiveAuthenticationAnimation.trigSuccess = RiveAuthenticationAnimation.stateMachineController?.findInput('trigSuccess');
            RiveAuthenticationAnimation.trigFail = RiveAuthenticationAnimation.stateMachineController?.findInput('trigFail');
          },
        ),
      ),
    );
  }
}
