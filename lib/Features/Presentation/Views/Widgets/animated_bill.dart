import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedBill extends StatelessWidget
{
  const AnimatedBill({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Lottie.asset('Assets/Animations/Animation - 1698784113718.json'),
    );
  }
}