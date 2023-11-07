import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PatientsCardImage extends StatelessWidget
{
  const PatientsCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.06,
        right: MediaQuery.sizeOf(context).width * 0.065,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.18,
          width: MediaQuery.sizeOf(context).width * 0.18,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Lottie.asset('Assets/Animations/Animation - 1699129293555 (1).json'),
        )
    );
  }
}